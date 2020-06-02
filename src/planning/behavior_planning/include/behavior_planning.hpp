#ifndef __BEHAVIOR_PLANNING_HPP__
#define __BEHAVIOR_PLANNING_HPP__
#pragma once

typedef struct{
    int follow_lane = 0;
    int decelerate_to_stop = 1;
    int stay_stopped = 2;
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

// Namespace
using namespace ros; 
using namespace tf;
using namespace std;

#endif // __BEHAVIOR_PLANNING_H__
