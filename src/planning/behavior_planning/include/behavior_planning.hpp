#ifndef __BEHAVIOR_PLANNING_HPP__
#define __BEHAVIOR_PLANNING_HPP__
#pragma once

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

// Utility header
#include <util/spline.hpp>

// Message header
#include <kusv_msgs/>

// Algorithm header

// Config header
#include <behavior_planning_config.hpp>

// Namespace
using namespace ros; 
using namespace tf;
using namespace std;

class BehaviorPlanning {
        // Constant variables
    public:
        // Constructor
       	explicit BehaviorPlanning(int id, std::string task_node, double period);
        // Operator
        // Destructor
       	virtual ~BehaviorPlanning();

       	void Init();
      	void Run();
      	void Publish();
		void Terminate();

    private:    
        // - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - //
	    // Functions
    
        // Callback functions                
        // Get functions for subscribe variables        
        // Transform functions		
		// Update functions for publish variables

        // - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - //
		// Variables

    	// Subscriber
        // Publisher
        // Inputs
        // Outputs
        // Environments
        TransformListener tf_listener_;
        //unique_ptr<YourClass> your_algorithm_;
        // Configuration parameters
        BehaviorPlanningParameters template_params_;
};

#endif // __BEHAVIOR_PLANNING_H__