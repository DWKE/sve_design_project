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

#include <ros/ros.h>
#include <pcl_ros/point_cloud.h>
#include <visualization_msgs/Marker.h>
#include <geometry_msgs/Pose.h>
#include <tf/transform_broadcaster.h>
#include "laser_geometry/laser_geometry.h"
#include <pcl/filters/voxel_grid.h>
#include <pcl/filters/radius_outlier_removal.h>


using namespace std;
// using namespace std::chrono;

ros::Publisher pcl_from_scan;
ros::Publisher filter_points;

double m_fLeafSize;
double m_fRadius;

typedef pcl::PointCloud<pcl::PointXYZ> PointCloud;
laser_geometry::LaserProjection projector;

void downsample(const PointCloud::ConstPtr& pInputCloud, PointCloud::Ptr& pDownsampledCloud,
                float f_paramLeafSize_m, float f_radius_size);

void ydlidar_callback(const sensor_msgs::LaserScan::ConstPtr& scan_in)
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
}

void downsample(const PointCloud::ConstPtr& pInputCloud, PointCloud::Ptr& pDownsampledCloud, float f_paramLeafSize_m, float f_radius_size)
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


int main(int argc, char **argv) {
    ros::init(argc, argv, "laserScan_to_pointcloud");
    ros::NodeHandle nh;

    nh.param ("ydlidar/leaf_size", m_fLeafSize, 0.1);
    nh.param ("ydlidar/radius_search", m_fRadius, 0.8);

    ros::Subscriber ydlidar_sub;
    ydlidar_sub = nh.subscribe<sensor_msgs::LaserScan>("/scan", 1, ydlidar_callback);

    pcl_from_scan = nh.advertise<PointCloud>("ydlidar_points", 1);
    filter_points = nh.advertise<PointCloud>("filtered_points", 1);

    while (ros::ok())
    {
        ros::spin();
    }

    nh.shutdown();          
    return 0;
}
