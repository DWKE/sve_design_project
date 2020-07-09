/*************************************************************************************************/
/* Module:      trajectory_planning.cpp                                                          
/* Description: Trajectory Planning for Smart Vehicle Design Project
/*                                                                                               
/* Authors: Yuseung Na (ys.na0220@gmail.com)
/* Version: 0.1                                                                                  
/*                                                                                               
/* Revision History                                                                              
/*      May 19, 2020: Yuseung Na, Created.                                                                  
/*                                                                                               
/*************************************************************************************************/

#include "trajectory_planning.hpp"

class TrajectoryPlanning {
public:
  TrajectoryPlanning() {
    m_rosSubObstacle
        = m_rosNodeHandler.subscribe("opt_behavior", 1000, &TrajectoryPlanning::behaviorCallback, this);
    m_rosSubPose
        = m_rosNodeHandler.subscribe("/localization/waypoint_lane", 1000, &TrajectoryPlanning::wplaneCallback, this);

    m_rosPubControlCmd
        = m_rosNodeHandler.advertise<kusv_msgs::PlanningControl>("/control/control_cmd", 1000);
  }

  ~TrajectoryPlanning() {}


private:
  NodeHandle m_rosNodeHandler;

  Subscriber m_rosSubPose;
  Subscriber m_rosSubObstacle;

  Publisher m_rosPubControlCmd;

  kusv_msgs::OptimalBehavior m_opt_behavior;
  kusv_msgs::PolyfitLaneData m_wp_lane;
  kusv_msgs::PlanningControl m_control_cmd;

  float m_prev_str = 0;
  float m_prev_vel = 0;

  float m_lookahead_dist = 0.5;
  float m_gx = 0;
  float m_gy = 0;
  float m_length = 0.5;


public:
  void behaviorCallback(const kusv_msgs::OptimalBehavior::ConstPtr &msg) {
    m_opt_behavior = *msg;
  }
  void wplaneCallback(const kusv_msgs::PolyfitLaneData::ConstPtr &msg) {
    m_wp_lane = *msg;
  }

  void trajectory_plan() {
    if (m_opt_behavior.optimal_behavior == FOLLOW_LANE) {
      m_gx = m_lookahead_dist;
      m_gy = m_wp_lane.a*pow(m_lookahead_dist, 3) + m_wp_lane.b*pow(m_lookahead_dist, 2) + m_wp_lane.c*m_lookahead_dist + m_wp_lane.d;
      
      m_control_cmd.str_angle = atan2(2*m_length*fabs(m_gy), pow(m_lookahead_dist, 2)) * (180/M_PI);
      m_control_cmd.velocity = 10;
    }
    else if(m_opt_behavior.optimal_behavior == OBSTACLE_STOP) {
      m_control_cmd.str_angle = m_prev_str;
      m_control_cmd.velocity = 0;
    }
    else if(m_opt_behavior.optimal_behavior == FLIGHT_MODE) {
      m_control_cmd.str_angle = 0;
      m_control_cmd.velocity = 0;
    }
    else {
      m_control_cmd.str_angle = m_prev_str;
      m_control_cmd.velocity = m_prev_vel;
    }
    ROS_INFO("Steering: %f, Velocity: %f", m_control_cmd.str_angle, m_control_cmd.velocity);

    m_rosPubControlCmd.publish(m_control_cmd);
    m_prev_str = m_control_cmd.str_angle;
    m_prev_vel = m_control_cmd.velocity;
  }  
};

int main(int argc, char **argv) {
  ros::init(argc, argv, "trajectory_planning");
  ros::NodeHandle nh;

  TrajectoryPlanning trajectory_planning;

  ros::Rate loop_rate(10);

  while (ros::ok()) {
    trajectory_planning.trajectory_plan();

    ros::spinOnce();
    loop_rate.sleep();
  }
  return 0;
}