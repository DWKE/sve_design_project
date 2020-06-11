#include <ros/ros.h>
#include <std_msgs/Bool.h>
#include <iostream>
//vision BoundingBox mark_size

class ModeConverter{
private:
    ros::NodeHandle nh;

    ros::Publisher vehicle_mode;
    ros::Subscriber mark_sign;
    ros::Subscriber mark_size;

    bool sign;
    bool mode;

public:
    ModeConverter(){
        mark_sign = nh.subscribe<std_msgs::Bool>("mode/mark_sign",10,&ModeConverter::signCb, this);
        //ros::Subscriber mark_size = nh.subscribe
        vehicle_mode = nh.advertise<std_msgs::Bool>("mode/vehicle_mode", 1); //Driving, Flight

        sign=false;
        mode=false;
    }
    ~ModeConverter(){}

    void signCb(const std_msgs::Bool::ConstPtr& msg){
        //sign = msg;
    }

    bool mark_sign_exist(){
        //return sign;
    }

    bool modeConvert(){
        //if(mark_size>threshold) !mode
    }
};

int main(int argc, char** argv){

  ros::init(argc, argv, "mode_convert");
  ModeConverter mc;
  ros::Rate loop_rate(50);

  std::cout<<"Waiting for Vision Sign..."<<std::endl;
  while(ros::ok() && mc.mark_sign_exist()){ //vision in
      ros::spinOnce();
      loop_rate.sleep();
  }

  return 0;
}
