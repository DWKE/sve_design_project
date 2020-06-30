#include <ros/ros.h>
#include <termios.h>
#include <math.h>
#include <geometry_msgs/PoseStamped.h>
#include <tf/LinearMath/Quaternion.h>

#define ARROW 1
#define COORDINATE 2
#define PI 3.141592

void printMenu();
void publishArrow(char c, ros::Publisher pub, geometry_msgs::PoseStamped msg);
char getch();

int mode;
float a = 0;
float b = 0;
float x = 0;
float y = 0;
float z = 2;
float x_ = 0;
float y_ = 0;
float z_ = 1;
float w_ = 0;
float theta = -90;

tf::Quaternion myQuaternion;


int main(int argc, char **argv){
    ros::init(argc, argv, "keyboard_interface");
    ros::NodeHandle nh;

    ros::Publisher local_waypoint_pub = nh.advertise<geometry_msgs::PoseStamped>("waypoint_", 10);
    ros::Rate loop_rate(100);
    geometry_msgs::PoseStamped msg;
    
    do{
        printMenu();
    } while (!mode);

    myQuaternion.setRPY(0, 0, (theta / (18 * PI)));
    x_ = myQuaternion.x();
    y_ = myQuaternion.y();
    z_ = myQuaternion.z();
    w_ = myQuaternion.w();
    msg.header.stamp = ros::Time::now();
    msg.pose.position.x = x;
    msg.pose.position.y = y;
    msg.pose.position.z = z;
    msg.pose.orientation.x = x_;
    msg.pose.orientation.y = y_;
    msg.pose.orientation.z = z_;
    msg.pose.orientation.w = w_;
    local_waypoint_pub.publish(msg);

    if (mode == ARROW){
        std::cout << "\nw:↑, a:←, d: →, s: ↓, q: ↶, e: ↷, u: ascend, l: descent" << std::endl;
        std::cout << "current location is (" << x << ", " << y << ", " << z << ")" << std::endl;
        std::cout << "current orientation is (" << theta << ")" << std::endl;

        while(ros::ok()){
            int c = 0;
            c = getch();
            if(c != NULL){
                publishArrow(c, local_waypoint_pub, msg);
            }
            ros::spinOnce();
            loop_rate.sleep();
        }
    }

    else if (mode == COORDINATE)
    {
        while (ros::ok())
        {
            std::cout << "current location is (" << x << ", " << y << ", " << z << ")" << std::endl;
            std::cout << "current orientation is (" << theta << ")" << std::endl;

            std::cout << "x: ";
            std::cin >> x;
            std::cout << "y: ";
            std::cin >> y;
            std::cout << "z: ";
            std::cin >> z;

            msg.header.stamp = ros::Time::now();
            msg.pose.position.x = x;
            msg.pose.position.y = y;
            msg.pose.position.z = z;
            local_waypoint_pub.publish(msg);

            // std::cout << "w_: ";
            // std::cin >> w_;
            // std::cout << "x_: ";
            // std::cin >> x_;
            // std::cout << "y_: ";
            // std::cin >> y_;
            // std::cout << "z_: ";
            // std::cin >> z_;

            // msg.header.stamp = ros::Time::now();
            // msg.pose.position.x = x;
            // msg.pose.position.y = y;
            // msg.pose.position.z = z;
            // msg.pose.orientation.w = w_ / PI;
            // msg.pose.orientation.x = x_;
            // msg.pose.orientation.y = y_;
            // msg.pose.orientation.z = z_;
            // local_waypoint_pub.publish(msg);
        }
    }
    return 0;
}

void printMenu(){

    ROS_INFO("----------------Select Mode----------------");
    ROS_INFO("          1. Arrow, 2. COORDINATE          ");
    ROS_INFO("-------------------------------------------");

    std::cin >> mode;

    if (mode != ARROW && mode != COORDINATE)
    {
        ROS_INFO("Type 1 or 2");
        mode = 0;
        return;
    }
}

void publishArrow(char c, ros::Publisher pub, geometry_msgs::PoseStamped msg){
    switch (c)
    {
    case 'w':
        x -= cos(theta * PI / 180);
        y -= sin(theta * PI / 180);
        break;
    case 'a':
        x += sin(theta * PI / 180);
        y -= cos(theta * PI / 180);
        break;
    case 's':
        x += cos(theta * PI / 180);
        y += sin(theta * PI / 180);
        break;
    case 'd':
        x -= sin(theta * PI / 180);
        y += cos(theta * PI / 180);
        break;
    case 'q':
        theta += 5;
        break;
    case 'e':
        theta -= 5;
        break;
    case 'u':
        z++;
        break;
    case 'l':
        z--;
        break;
    default:

        break;
    }
    if (z <= 0)
        z = 0;
    if (z >= 3)
        z = 3;

    myQuaternion.setRPY(0, 0, (theta * PI / 180));
    x_ = myQuaternion.x();
    y_ = myQuaternion.y();
    z_ = myQuaternion.z();
    w_ = myQuaternion.w();

    msg.header.stamp = ros::Time::now();
    msg.pose.position.x = x;
    msg.pose.position.y = y;
    msg.pose.position.z = z;
    msg.pose.orientation.x = x_;
    msg.pose.orientation.y = y_;
    msg.pose.orientation.z = z_;
    msg.pose.orientation.w = w_;
    pub.publish(msg);
    std::cout << "current location is (" << x << ", " << y << ", " << z << ")" << std::endl;
    std::cout << "current orientation is (" << theta << ")" << std::endl;
}

char getch(){
    fd_set set;
    struct timeval timeout;
    int rv;
    char buff = 0;
    int len = 1;
    int filedesc = 0;

    FD_ZERO(&set);
    FD_SET(filedesc, &set);

    timeout.tv_sec = 0;
    timeout.tv_usec = 1000;

    rv = select(filedesc + 1, &set, NULL, NULL, &timeout);

    struct termios old = {0};
    if (tcgetattr(filedesc, &old) < 0)
        ROS_ERROR("tcsetattr()");
    old.c_lflag &= ~ICANON;
    old.c_lflag &= ~ECHO;
    old.c_cc[VMIN] = 1;
    old.c_cc[VTIME] = 0;

    if (tcsetattr(filedesc, TCSANOW, &old) < 0)
        ROS_ERROR("tcsetattr ICANON");
    if (rv == -1)
        ROS_ERROR("select");
    else if (rv == 0)
        ;
    //ROS_INFO("no_key_pressed");
    else
        read(filedesc, &buff, len);

    old.c_lflag |= ICANON;
    old.c_lflag |= ECHO;
    if (tcsetattr(filedesc, TCSADRAIN, &old) < 0)
        ROS_ERROR("tcsetattr ~ICANON");
    return (buff);
}
