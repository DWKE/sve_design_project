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

class BehaviorPlanning {
public:
  BehaviorPlanning() {
    m_rosSubObstacle
        = m_rosNodeHandler.subscribe("/lidar/obstacle", 1000, &BehaviorPlanning::obstacleCallback, this);
    m_rosSubPose
        = m_rosNodeHandler.subscribe("/localization/pose", 1000, &BehaviorPlanning::poseCallback, this);

    m_rosPubOptimalState
        = m_rosNodeHandler.advertise<kusv_msgs::OptimalBehavior>("/planning/opt_behavior", 1000);
  }

  ~BehaviorPlanning() {}


protected:
  NodeHandle m_rosNodeHandler;

  Subscriber m_rosSubPose;
  Subscriber m_rosSubObstacle;

  Publisher m_rosPubOptimalState;

  TransformListener tf_listener_;

  StateMachineStates state_;

  kusv_msgs::PlanningLocalization m_pose;
  kusv_msgs::PlanningLiDAR m_object;

public:
  void obstacleCallback(const kusv_msgs::PlanningLiDAR::ConstPtr &msg) {
    m_object = *msg;
  }
  void poseCallback(const kusv_msgs::PlanningLocalization::ConstPtr &msg) {
    m_pose = *msg;
  }
};

int main(int argc, char **argv){
  std::string node_name = "BehaviorPlanning";
  ros::init(argc, argv, node_name);
  ros::NodeHandle nh;

  ROS_INFO("Initialize node, get parameters...");

  int id;
  if (!nh.getParam("task_id/id_template", id))
    id = 0;

  double period;
  if (!nh.getParam("task_period/period_template", period))
    period = 1.0;

  ROS_INFO("Complete to get parameters! (ID: %d, Period: %.3f)", id, period);

  BehaviorPlanning main_task();

  return 0;
}
