#ifndef ydlidar_H
#define ydlidar_H

#include <iostream>
#include <fstream>
#include <chrono>
#include <algorithm>
#include <iterator>

#include <pcl/point_types.h>
#include <sensor_msgs/PointCloud2.h>
#include <pcl_conversions/pcl_conversions.h>
#include <tf/transform_listener.h>
#include "pcl_ros/transforms.h"
#include <pcl/kdtree/kdtree.h>
#include <pcl/segmentation/sac_segmentation.h>
#include <pcl/segmentation/extract_clusters.h>
#include <pcl/filters/extract_indices.h>

#include <Eigen/Dense>
#include <tf/tf.h>
#include <tf/transform_broadcaster.h>
#include <tf/transform_listener.h>

#include <ros/ros.h>
#include <pcl_ros/point_cloud.h>
#include "visualization_msgs/Marker.h"
#include "visualization_msgs/MarkerArray.h"
#include <geometry_msgs/Pose.h>
#include <tf/transform_broadcaster.h>
#include "laser_geometry/laser_geometry.h"
#include <pcl/filters/voxel_grid.h>
#include <pcl/filters/radius_outlier_removal.h>

#include "cluster.hpp"

typedef struct _rgb RGB;
struct _rgb
{
        uint8_t m_r;
        uint8_t m_g;
        uint8_t m_b;

        _rgb ()
        { }

        _rgb (uint8_t r, uint8_t g, uint8_t b)
        {
                m_r = r;
                m_g = g;
                m_b = b;
        }
};

class ydlidar
{
    private:
    ros::Publisher pcl_from_scan;
    ros::Publisher filter_points;
    ros::Publisher pub_shape;
    ros::Publisher pub_Origin;
    ros::Publisher pub_colShape;
    ros::Publisher pub_collisionChecker;

    ros::Subscriber ydlidar_sub;
    ros::NodeHandle nh;

    typedef pcl::PointCloud<pcl::PointXYZ> PointCloud;
    laser_geometry::LaserProjection projector;

    visualization_msgs::Marker m_Origin;
    visualization_msgs::MarkerArray m_arrShapes;
    visualization_msgs::MarkerArray m_collisionShapes;


    std_msgs::Header m_velodyne_header;
    std::vector<RGB> m_globalRGB;
    int m_maxIndexNumber = 0;

    double m_fMarkerDuration;
    double m_fLeafSize;
    double m_dRange_m;
    double m_dClusterMinSize;
    double m_dClusterErrRadius;
    double m_dClusterMaxSize;
    double m_dRemoveSideRange;
    double m_fRadius;

    bool isObstacle = false;

    std::vector<clusterPtr> m_OriginalClusters;

    public:
        ydlidar();
        ~ydlidar();

        void mainLoop();
        void ydlidar_callback(const sensor_msgs::LaserScan::ConstPtr& scan_in);
        void downsample(const PointCloud::ConstPtr& pInputCloud, PointCloud::Ptr& pDownsampledCloud,
                                 float f_paramLeafSize_m, float f_radius_size);
        void dbscan(const PointCloud::ConstPtr& pInputCloud, std::vector<pcl::PointIndices>& vecClusterIndices);
        void setCluster (const std::vector<pcl::PointIndices> vecClusterIndices,
                                  std::vector<clusterPtr>& pOriginalClusters, const PointCloud::Ptr pInputCloud);
        void generateColor(size_t indexNumber);
        void displayShape (const std::vector<clusterPtr> pVecClusters);
        void publish ();
};

#endif // ydlidar_H
