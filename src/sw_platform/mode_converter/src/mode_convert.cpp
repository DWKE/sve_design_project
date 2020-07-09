#include <ros/ros.h>
#include <std_msgs/Bool.h>
#include <kusv_msgs/VisionMark.h>
#include <iostream>

class ModeConverter{
private:
    ros::NodeHandle nh;

    ros::Publisher vehicle_mode;
    ros::Subscriber vision_mark;

    int boxSize; //int*int

    int count;
    std_msgs::Bool mode;

public:
    bool sign;
    bool _mode;

    ModeConverter(){
        vision_mark= nh.subscribe<kusv_msgs::VisionMark>("/darknet_ros/mode/vision_mark",10,&ModeConverter::signCb, this);
        vehicle_mode = nh.advertise<std_msgs::Bool>("mode/vehicle_mode", 1); //Driving, Flight

        count =0;
        sign=false;
        _mode=false;
    }
    ~ModeConverter(){}

    void signCb(const kusv_msgs::VisionMark::ConstPtr& msg){
        sign = msg->sign;
        boxSize = msg->height * msg->width;
    }

    void modeConvert(){
        if(boxSize>100000 && _mode == false) {
            count++;
            if(count==50) {
                _mode=true; //mode=Flight
                std::cout<<"Flight Start!"<<std::endl;
                count = 0;
            }
        }
        else {
            count = 0;
            //std::cout<<"Box Size : "<<boxSize<<std::endl;
        }
        mode.data = _mode;
        vehicle_mode.publish(mode);
    }
};

int main(int argc, char** argv){

  ros::init(argc, argv, "mode_convert");
  ModeConverter mc;
  ros::Rate loop_rate(50);

  std::cout<<"Waiting for Vision Sign..."<<std::endl;
  while(ros::ok() && !mc.sign){ //vision in
      ros::spinOnce();
      loop_rate.sleep();
  }

  std::cout<<"Vision In!"<<std::endl;

  while(ros::ok()){
      mc.modeConvert();
      ros::spinOnce();
      loop_rate.sleep();
  }

  return 0;
}
