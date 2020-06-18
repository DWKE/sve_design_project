#ifndef __TRAJECTORY_PLANNING_HPP__
#define __TRAJECTORY_PLANNING_HPP__
#pragma once

#define FOLLOW_LANE 0
#define OBSTACLE_STOP 1
#define FLIGHT_MODE 2


// STD header
#include <mutex>
#include <vector>
#include <utility>
#include <memory>
#include <math.h>

// ROS header
#include <ros/ros.h>
#include <tf/tf.h>
#include <tf/transform_datatypes.h>
#include <tf/transform_listener.h>

// Message header
#include "kusv_msgs/OptimalBehavior.h"
#include "kusv_msgs/PolyfitLaneData.h"
#include "kusv_msgs/PlanningControl.h"

// Namespace
using namespace ros; 
using namespace tf;
using namespace std;

#endif // __TRAJECTORY_PLANNING_H__