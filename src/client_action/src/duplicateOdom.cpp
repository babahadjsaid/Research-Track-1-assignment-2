#include <ros/ros.h>
#include <stdio.h>
#include "nav_msgs/Odometry.h"
#include "geometry_msgs/Twist.h"
#include "client_action/custommsg.h" 


geometry_msgs::Vector3 linear_vel,angular_vel;
geometry_msgs::Point pose;


//odom subscriber's callback 
void OdomCallback(const nav_msgs::Odometry::ConstPtr& msg){
  
  pose = msg->pose.pose.position;
}
//cmd_vel subscriber's callback 
void CmdvelCallback(const geometry_msgs::Twist::ConstPtr& msg){

  linear_vel = msg->linear;
  angular_vel = msg->angular;
}

int main (int argc, char **argv)
{
	
  //initial node 
  ros::init(argc, argv, "duplicate_odom");

  ros::NodeHandle nodeHandler;
  //subscribing to topics
  ros::Subscriber Odom_sub = nodeHandler.subscribe("/odom", 1000, OdomCallback);
  ros::Subscriber cmd_vel_sub = nodeHandler.subscribe("/cmd_vel", 1000, CmdvelCallback);
  //creating a publisher
  ros::Publisher pub = nodeHandler.advertise<client_action::custommsg>("duplicatedOdom", 1000);
  //Printing message to indicate the starting of the loop 
  ROS_INFO("starting the loop");
  int Pub_Freq;
  ros::param::get("/PublishFreq", Pub_Freq);
  
  ros::Rate rate(Pub_Freq);
  
  while(true){
    //populate the custom msg
    client_action::custommsg my_msg;
    my_msg.pose = pose;
    my_msg.angular_vel = angular_vel;
    my_msg.linear_vel = linear_vel;
    //publish the msg
    pub.publish(my_msg);
    rate.sleep();
    ros::spinOnce();
  }
  return 0;
}