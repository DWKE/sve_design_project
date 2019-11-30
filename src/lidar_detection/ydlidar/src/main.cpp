#include "ydlidar.hpp"
#include <ros/ros.h>

int main(int argc, char **argv) {
    ros::init(argc, argv, "laserScan_to_pointcloud");
    ydlidar ydlidar;

    ydlidar.mainLoop();

    return 0;
}
