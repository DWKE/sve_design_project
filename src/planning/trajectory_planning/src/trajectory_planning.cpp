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

TrajectoryPlanning::TrajectoryPlanning(int id, std::string task_node, double period) {
}

TrajectoryPlanning::~TrajectoryPlanning(){
}

void TrajectoryPlanning::Init(){
    // Node initialization
    NodeHandle nh;
        
    // Subscriber init
    //subscriber_ = nh.subscribe("your/subscribe/name", 10, &TrajectoryPlanning::YourCallbackFunction, this);

    // Publisher init
    //publisher_ = nh.advertise<YourMsgType>("your/publish/name", 10); 
    
    // Algorithm init
    //your_algorithm_ = make_unique<YourClass>();
}

void TrajectoryPlanning::Run(){
    ROS_INFO("Running ...");
	// Get functions for subscribe variables
	
    // Run your codes
		
	// Update output
}

void TrajectoryPlanning::Publish(){
    //publisher_.publish(your_output_);
}

void TrajectoryPlanning::Terminate(){

}

// Callback functions
    
// Get functions

// Transform functions

// Update functions

int main(int argc, char **argv){
    std::string node_name = "TrajectoryPlanning";
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
    
    TrajectoryPlanning main_task(id, node_name, period);
    main_task.Exec();

    return 0;
}