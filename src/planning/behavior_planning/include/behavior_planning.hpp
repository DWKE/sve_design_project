#ifndef __BEHAVIOR_PLANNING_HPP__
#define __BEHAVIOR_PLANNING_HPP__
#pragma once

#define FOLLOW_LANE 0
#define OBSTACLE_STOP 1
#define FLIGHT_MODE 2


typedef struct{
    int follow_lane = FOLLOW_LANE;
    int obstacle_stop = OBSTACLE_STOP;
    int flight_mode = FLIGHT_MODE;
}StateMachineStates;

// STD header
#include <mutex>
#include <vector>
#include <utility>
#include <memory>

// ROS header
#include <ros/ros.h>
#include <tf/tf.h>
#include <tf/transform_datatypes.h>
#include <tf/transform_listener.h>

// Message header
#include "kusv_msgs/OptimalBehavior.h"
#include "kusv_msgs/PlanningLiDAR.h"
#include "kusv_msgs/PlanningLocalization.h"
#include "kusv_msgs/PlanningVision.h"

// Namespace
using namespace ros; 
using namespace tf;
using namespace std;

#endif // __BEHAVIOR_PLANNING_H__
