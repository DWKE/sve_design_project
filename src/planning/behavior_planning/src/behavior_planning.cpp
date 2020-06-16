/*************************************************************************************************/
/* Module:      behavior_planning.cpp                                                          
/* Description: Behavior Planning for Smart Vehicle Design Project
/*                                                                                               
/* Authors: Yuseung Na (ys.na0220@gmail.com)
/* Version: 0.1                                                                                  
/*                                                                                               
/* Revision History                                                                              
/*      May 19, 2020: Yuseung Na, Created.                                                                  
/*                                                                                               
/*************************************************************************************************/

#include "behavior_planning.hpp"

class BehaviorPlanning
{
public:
  BehaviorPlanning() {
    m_rosSubObstacle = m_rosNodeHandler.subscribe("/lidar/obstacle", 1000, &BehaviorPlanning::obstacleCallback, this);
    // m_rosSubPose = m_rosNodeHandler.subscribe("/localization/pose", 1000, &BehaviorPlanning::poseCallback, this);
    m_rosSubVision = m_rosNodeHandler.subscribe("/vision/sign", 1000, &BehaviorPlanning::signCallback, this);

    m_rosPubOptimalState = m_rosNodeHandler.advertise<kusv_msgs::OptimalBehavior>("opt_behavior", 1000);
  }

  ~BehaviorPlanning() {}

protected:
  NodeHandle m_rosNodeHandler;

  Subscriber m_rosSubObstacle;
  // Subscriber m_rosSubPose;
  Subscriber m_rosSubVision;

  Publisher m_rosPubOptimalState;

  TransformListener tf_listener_;

  StateMachineStates state_;

  kusv_msgs::PlanningLiDAR m_object;
  // kusv_msgs::PlanningLocalization m_pose;
  kusv_msgs::PlanningVision m_sign;

  kusv_msgs::OptimalBehavior m_optbehavior;

public:
  void obstacleCallback(const kusv_msgs::PlanningLiDAR::ConstPtr &msg) {
    m_object = *msg;
  }  
  
  // void poseCallback(const kusv_msgs::PlanningLocalization::ConstPtr &msg)
  // {
  //   m_pose = *msg;
  // }

  void signCallback(const kusv_msgs::PlanningVision::ConstPtr &msg) {
    m_sign = *msg;
  }

  void behavior_plan() {
    // flight mode
    if (m_sign.isStop == true) {
      m_optbehavior.optimal_behavior = state_.flight_mode;
      ROS_INFO("Optimal behavior: FLIGHT_MODE");
    }    
    // drive mode
    else if (m_sign.isStop == false) {
      // Object
      if (m_object.isObstacle == true) {
        m_optbehavior.optimal_behavior = state_.obstacle_stop;
        ROS_INFO("Optimal behavior: OBSTACLE_STOP");
      }
      // No object
      else {
        m_optbehavior.optimal_behavior = state_.follow_lane;
        ROS_INFO("Optimal behavior: FOLLOW_LANE");
      }
    }
    m_rosPubOptimalState.publish(m_optbehavior);
  }
};

int main(int argc, char **argv) {
  ros::init(argc, argv, "behavior_planning");
  ros::NodeHandle nh;

  BehaviorPlanning behavior_planning;

  ros::Rate loop_rate(100);

  while (ros::ok()) {
    behavior_planning.behavior_plan();

    ros::spinOnce();
    loop_rate.sleep();
  }
  return 0;
}