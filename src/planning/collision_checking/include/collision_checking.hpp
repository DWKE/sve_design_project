#ifndef __COLLISION_CHECKING_HPP__
#define __COLLISION_CHECKING_HPP__
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
#include <collision_checking_config.hpp>

// Namespace
using namespace ros; 
using namespace tf;
using namespace std;

class CollisionChecking {
        // Constant variables
    public:
        // Constructor
       	explicit CollisionChecking(int id, std::string task_node, double period);
        // Operator
        // Destructor
       	virtual ~CollisionChecking();

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
        CollisionCheckingParameters template_params_;
};

#endif // __TRAJECTORY_PLANNING_H__