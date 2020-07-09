#include <ros/ros.h>
#include <sve_design_control/driving_control_msg.h>

int main(int argc, char** argv){
    ros::init(argc, argv, "rosserial_test_node");
    ros::NodeHandle nh;
    ros::Rate loop_rate(50.0);

    ros::Publisher driving_control_pub = nh.advertise<sve_design_control::driving_control_msg>("/control/driving_control_", 10);
    
    sve_design_control::driving_control_msg pc_to_mbed_msg;

    while(ros::ok()){
        pc_to_mbed_msg.velocity = 0;
        pc_to_mbed_msg.steering_angle = 0;
        driving_control_pub.publish(pc_to_mbed_msg);
        
        ros::spinOnce();
        loop_rate.sleep();
    }
    return 0;
}