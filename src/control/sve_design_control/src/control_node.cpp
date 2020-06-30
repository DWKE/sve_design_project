/*
 *
 * control_node.cpp
 *
 * Created on: 2020. 6. 09
 *     Author: sal9s0
 *
 */

#include <ros/ros.h>
#include <std_msgs/Bool.h>
#include <geometry_msgs/PoseStamped.h>
#include <sve_design_control/driving_control_msg.h>
#include <kusv_msgs/PlanningControl.h>

#define DRIVE false
#define FLIGHT true

kusv_msgs::PlanningControl planning_to_control_msg;
std_msgs::Bool mode;
geometry_msgs::PoseStamped localization_to_control_msg;



void planning_cb(const kusv_msgs::PlanningControl::ConstPtr& msg);
void sw_platform_cb(const std_msgs::Bool::ConstPtr& msg);
// void localization_cb(const geometry_msgs::PoseStamped::ConstPtr& msg);

int main(int argc, char **argv){
    ros::init(argc, argv, "control_node");
    ros::NodeHandle nh;
    ros::Rate loop_rate(50.0);

    ros::Subscriber planning_to_control_sub = nh.subscribe<kusv_msgs::PlanningControl>("/control/control_cmd", 10, planning_cb);
    ros::Subscriber swPlatform_to_control_sub = nh.subscribe<std_msgs::Bool>("/mode/vehicle_mode", 10, sw_platform_cb);
    // ros::Subscriber localization_to_control_sub = nh.subscribe<>("/TODO3", 10, localization_cb);

    ros::Publisher driving_control_pub = nh.advertise<sve_design_control::driving_control_msg>("/control/driving_control_", 10);
    // ros::Publisher flight_control_pub = nh.advertise<geometry_msgs::PoseStamped>("/control/flight_control_", 10);

    while(ros::ok()){
        if(mode.data == DRIVE){
            // printf("drive\n");
            
            /*
            
            steering angle calculate
            planning_to_control_msg

            */
        }
        
        if(mode.data == FLIGHT){
            // printf("flight\n");
        }

        ros::spinOnce();
        loop_rate.sleep();
    }

    return 0;
}

void planning_cb(const kusv_msgs::PlanningControl::ConstPtr& msg){
    planning_to_control_msg = *msg;
}

void sw_platform_cb(const std_msgs::Bool::ConstPtr& msg){
    mode = *msg;
}

void localization_cb(const geometry_msgs::PoseStamped::ConstPtr& msg){
    localization_to_control_msg = *msg;
}