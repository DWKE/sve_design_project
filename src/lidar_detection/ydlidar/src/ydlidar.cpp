#include "ydlidar.hpp"

using namespace std;

ydlidar::ydlidar()
{
    nh.param ("ydlidar/leaf_size", m_fLeafSize, 0.1);
    nh.param ("ydlidar/radius_search", m_fRadius, 0.8);
    nh.param ("ydlidar/Marker_duration", m_fMarkerDuration, 0.1);
    nh.param ("ydlidar/threshold_range", m_dRange_m, 15.0);
    nh.param ("ydlidar/cluster_err_range", m_dClusterErrRadius, 0.5);
    nh.param ("ydlidar/cluster_min_size", m_dClusterMinSize, 5.0);
    nh.param ("ydlidar/cluster_max_size", m_dClusterMaxSize, 20.0);


    pub_shape = nh.advertise<visualization_msgs::MarkerArray>("Shape", 1);
    pub_Origin = nh.advertise<visualization_msgs::Marker> ("Origin", 1);

    ydlidar_sub = nh.subscribe<sensor_msgs::LaserScan>("/scan", 1, &ydlidar::ydlidar_callback, this);

    pcl_from_scan = nh.advertise<PointCloud>("ydlidar_points", 1);
    filter_points = nh.advertise<PointCloud>("filtered_points", 1);
}

ydlidar::~ydlidar(){}

void ydlidar::mainLoop()
{
        ros::Rate loop_rate(50);

        while(ros::ok())
        {
                ros::spinOnce();
                loop_rate.sleep();
        }
}

void ydlidar::ydlidar_callback(const sensor_msgs::LaserScan::ConstPtr& scan_in)
{
    sensor_msgs::PointCloud2 cloud;
    projector.projectLaser(*scan_in, cloud);

    // Publish the new point cloud.
    cloud.header.frame_id = "/laser_frame";
    cloud.header.stamp = scan_in->header.stamp;
    pcl_from_scan.publish(cloud);

    PointCloud::Ptr pInputCloud (new PointCloud);
    pcl::fromROSMsg(cloud, *pInputCloud);

    PointCloud::Ptr pDownsampledCloud (new PointCloud);
    downsample(pInputCloud, pDownsampledCloud, m_fLeafSize, m_fRadius);
    filter_points.publish(pDownsampledCloud);

    vector<pcl::PointIndices> vecClusterIndices;
    dbscan(pDownsampledCloud, vecClusterIndices);

    setCluster (vecClusterIndices, m_OriginalClusters, pDownsampledCloud);

    // Display shape
    displayShape (m_OriginalClusters);

    // publish
    publish();
}

void ydlidar::downsample(const PointCloud::ConstPtr& pInputCloud, PointCloud::Ptr& pDownsampledCloud, float f_paramLeafSize_m, float f_radius_size)
{
        pDownsampledCloud->clear();

        // Voxel length of the corner : fLeafSize
        pcl::VoxelGrid<pcl::PointXYZ> voxelFilter;
        voxelFilter.setInputCloud (pInputCloud);
        voxelFilter.setLeafSize(f_paramLeafSize_m, f_paramLeafSize_m, f_paramLeafSize_m);
        voxelFilter.filter (*pDownsampledCloud);

        pcl::RadiusOutlierRemoval<pcl::PointXYZ> outrem;
        // build the filter
        outrem.setInputCloud(pDownsampledCloud);
        outrem.setRadiusSearch(f_radius_size);
        outrem.setMinNeighborsInRadius (2);
        // apply filter
        outrem.filter (*pDownsampledCloud);
}

void ydlidar::dbscan(const PointCloud::ConstPtr& pInputCloud, std::vector<pcl::PointIndices>& vecClusterIndices)
{
        pcl::search::KdTree<pcl::PointXYZ>::Ptr pKdtreeDownsampledCloud (new pcl::search::KdTree<pcl::PointXYZ>);
        pKdtreeDownsampledCloud->setInputCloud (pInputCloud);

        pcl::EuclideanClusterExtraction<pcl::PointXYZ> euclideanCluster;
        euclideanCluster.setClusterTolerance (m_dClusterErrRadius);
        euclideanCluster.setMinClusterSize (m_dClusterMinSize);
        euclideanCluster.setMaxClusterSize (m_dClusterMaxSize);
        euclideanCluster.setSearchMethod (pKdtreeDownsampledCloud);
        euclideanCluster.setInputCloud (pInputCloud);
        euclideanCluster.extract (vecClusterIndices);
}

void ydlidar::setCluster (const std::vector<pcl::PointIndices> vecClusterIndices, std::vector<clusterPtr>& pOriginalClusters, const PointCloud::Ptr pInputCloud)
{
        pOriginalClusters.clear();

        int objectNumber = 0;
        for (const auto& clusterIndice : vecClusterIndices)
        {
                std::string label_ = "Obstacle ";
                std::string label = label_;
                label.append (std::to_string(objectNumber));

                // generate random color to globalRGB variable
                generateColor(vecClusterIndices.size());

                // pCluster is a local cluster
                clusterPtr pCluster (new Cluster());

                // Cloring and calculate the cluster center point and quaternion
                pCluster->SetCloud(pInputCloud, clusterIndice.indices, m_velodyne_header, objectNumber, m_globalRGB[objectNumber].m_r, m_globalRGB[objectNumber].m_g, m_globalRGB[objectNumber].m_b, label, true);

                pOriginalClusters.push_back(pCluster);
                objectNumber++;
        }
}

void ydlidar::generateColor(size_t indexNumber)
{
        if (indexNumber > m_maxIndexNumber)
        {
                int addRGB = indexNumber - m_maxIndexNumber;
                m_maxIndexNumber = indexNumber;

                for (size_t i = 0; i < addRGB; i++)
                {
                        uint8_t r = 1024 * rand () % 255;
                        uint8_t g = 1024 * rand () % 255;
                        uint8_t b = 1024 * rand () % 255;
                        m_globalRGB.push_back(RGB(r, g, b));
                }
        }
}


void ydlidar::displayShape (const std::vector<clusterPtr> pVecClusters)
{
        // origin
        m_Origin.header.frame_id = "/laser_frame";
        m_Origin.header.stamp = ros::Time::now();

        m_Origin.ns = "/origin";
        m_Origin.id = 0;

        m_Origin.type = visualization_msgs::Marker::SPHERE;

        m_Origin.action = visualization_msgs::Marker::ADD;

        m_Origin.pose.position.x = 0;
        m_Origin.pose.position.y = 0;
        m_Origin.pose.position.z = 0;
        m_Origin.pose.orientation.x = 0.0;
        m_Origin.pose.orientation.y = 0.0;
        m_Origin.pose.orientation.z = 0.0;
        m_Origin.pose.orientation.w = 1.0;

        m_Origin.scale.x = 0.5;
        m_Origin.scale.y = 0.5;
        m_Origin.scale.z = 0.5;

        m_Origin.color.r = 1.0f;
        m_Origin.color.g = 0.0f;
        m_Origin.color.b = 1.0f;
        m_Origin.color.a = 1.0;

        m_Origin.lifetime = ros::Duration();

        // tracking objects
        m_arrShapes.markers.clear();

        uint32_t objectNumber = 0;
        for (auto pCluster : pVecClusters)
        {
                bool isClusterValid = pCluster->m_valid_cluster;

                if (isClusterValid)
                {
                        visualization_msgs::Marker shape;

                        shape.lifetime = ros::Duration(m_fMarkerDuration);
                        shape.header.frame_id = "/laser_frame";
                        shape.id = objectNumber;


                        //shape.color.b = (float)(*cluster_it)->m_b/255.0f;
                        shape.color.r = 0.0;
                        shape.color.g = 1.0;
                        shape.color.b = 0.0;
                        shape.color.a = 0.5;

                        shape.type = visualization_msgs::Marker::LINE_STRIP;
                        shape.action = visualization_msgs::Marker::ADD;
                        shape.ns = "/Polygon";
                        shape.scale.x = 0.06;

                        for (auto const &point: pCluster->m_polygon.polygon.points)
                        {
                                geometry_msgs:: Point tmpPoint;
                                tmpPoint.x = point.x;
                                tmpPoint.y = point.y;
//                                tmpPoint.z = point.z;
                                tmpPoint.z = 0;
                                shape.points.push_back (tmpPoint);
                        }

                        m_arrShapes.markers.push_back(shape);

                        shape.scale.x = 0.4;
                        shape.scale.y = 0.4;
                        shape.scale.z = 0.4;
                        shape.points.clear();
                        shape.pose.position = pCluster->m_center.position;
                        shape.pose.orientation = pCluster->m_center.orientation;
                        shape.color.r = shape.color.g = shape.color.b = 1.0;
                        shape.color.a = 1.0;
                        shape.type = visualization_msgs::Marker::TEXT_VIEW_FACING;
                        shape.ns = "/Text";

                        double distance = sqrt(pow(shape.pose.position.x, 2.0) + pow (shape.pose.position.y, 2.0));
                        shape.text = std::to_string(distance);
//                        shape.text = std::to_string(pCluster->m_id);
                        m_arrShapes.markers.push_back (shape);
                }
                objectNumber++;
        }
}


void ydlidar::publish ()
{
        // broadcast tf
//        static tf::TransformBroadcaster br;
//        tf::Transform transform;

//        transform.setOrigin( tf::Vector3(m_tf_x, m_tf_y, m_tf_z) );
//        tf::Quaternion q;
//        q.setRPY(0.0, 0.0, 0.0);
//        transform.setRotation(q);

//        br.sendTransform(tf::StampedTransform(transform, ros::Time::now(), "car", "velodyne"));

        pub_shape.publish (m_arrShapes);
        pub_Origin.publish(m_Origin);
}

