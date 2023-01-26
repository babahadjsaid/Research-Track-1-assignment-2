#include <ros/ros.h>
#include <stdio.h>
#include <assignment_2_2022/PlanningAction.h>
#include "client_action/custommsg.h"
#include <actionlib_msgs/GoalStatusArray.h> 
#include <math.h>
#include <chrono>


client_action::custommsg my_msg;  // creating an object of the custom message
assignment_2_2022::PlanningGoal goal;  // creating an object of the goal message
std::chrono::time_point<std::chrono::high_resolution_clock> start,end;  // creating time points for measuring time
int status,tmp;  // variables for storing the current and previous status
geometry_msgs::Point startingpose;  // variable for storing the starting position

// callback function for the status topic
void MyCallBack(const actionlib_msgs::GoalStatusArray::ConstPtr& msg){
    if (!msg->status_list.empty()){
      status= msg->status_list[0].status;
    }
    // check if the status is 3 which means the goal is completed
    if(status == 3){
      if(status != tmp){
        end = std::chrono::high_resolution_clock::now();  // set the end time
        auto duration = std::chrono::duration_cast<std::chrono::microseconds>(end - start);  // calculate the duration
        auto distanceTraveled = sqrt((pow(my_msg.pose.x - startingpose.x,2) + pow(my_msg.pose.y - startingpose.y,2) ));  // calculate the distance traveled
        auto d = duration.count() / 1000000.0;  // convert the duration to seconds
        auto avgspeed = distanceTraveled/d;  // calculate the average speed
        ROS_INFO("the distance traveled is %f, and the average speed is %f and the time is %f , %ld",distanceTraveled,avgspeed,d,duration.count());  // print the results
      }
    }
    tmp = status;
}

// callback function for the custom message topic
void CustomMessageCallback(const client_action::custommsg::ConstPtr& msg){
    my_msg = *msg;
    start = std::chrono::high_resolution_clock::now();  // set the start time
}

// callback function for the goal topic
void goalCallback(const assignment_2_2022::PlanningActionGoal::ConstPtr& msg){
  goal = msg->goal;
  startingpose = my_msg.pose;
}

int main (int argc, char **argv)
{
	//initial node 
  ros::init(argc, argv, "Subscriber");

  ros::NodeHandle nodeHandler;
  
  //subscribing to topics
  ros::Subscriber Odom_sub = nodeHandler.subscribe("/duplicatedOdom", 1000, CustomMessageCallback);
  ros::Subscriber goal_sub = nodeHandler.subscribe("/reaching_goal/goal", 1000, goalCallback);
  ros::Subscriber status_sub = nodeHandler.subscribe("/reaching_goal/status", 1000, MyCallBack);
  
  //Printing message to indicate the starting of the loop 
  ROS_INFO("starting the loop");
  
  // spinning the loop
  ros::spin();
  
  return 0;
}