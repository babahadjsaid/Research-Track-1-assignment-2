/**
  * \file duplicateOdom.cpp 
  * \brief duplicate the data of "/odom" topic
  * 
  * \param [in] PublishFreq Define the frequency of publishing.
  * 
  * \details
  *
  * Subscribes to: <BR>
  *   ° /odom
  *   ° /cmd_vel
  *
  * Publishes to: <BR>
  *   ° duplicatedOdom
  *
  *
  * Description :
  * 
  * This node subscribes to the '/odom' and '/cmd_vel' topics 
  * and publishes a custom message containing the pose, linear velocity, and angular velocity to the 'duplicatedOdom' topic.
  * The frequency of publishing is determined by the 'PublishFreq' parameter.
  * 
  * \author Baba HADJ SAID
  * \date 24/05/2023
*/


#include <ros/ros.h>
#include <stdio.h>
#include "nav_msgs/Odometry.h"
#include "geometry_msgs/Twist.h"
#include "client_action/custommsg.h" 


geometry_msgs::Vector3 linear_vel,angular_vel; ///< Linear and angular velocity variables.
geometry_msgs::Point pose; ///< Pose variable.



/**
 * @brief Callback function for handling Odometry messages. 
 * 
 * 
 * This callback function is called when a new Odometry message is received.
 * It extracts the position information from the message and assigns it to the 'pose' variable.
 * @param msg The Odometry message received.
 
 */
void OdomCallback(const nav_msgs::Odometry::ConstPtr& msg){
  
  pose = msg->pose.pose.position;
}
/**
 * @brief Callback function for handling Twist messages.
 * 
 * 
 * This callback function is called when a new Twist message is received. 
 * It extracts the linear and angular velocity information from the message and assigns them to the 'linear_vel' and 'angular_vel' variables respectively
 * @param msg The Twist message received.
 */
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