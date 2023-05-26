
/**
  * \file Subscriber.cpp 
  * \brief Stats on the robot performance.
  * 
  * \details
  *
  * Subscribes To: <BR>
  *  ° /duplicatedOdom
  *  ° /reaching_goal/goal
  *  ° /reaching_goal/status
  *
  * Description :
  * 
  * This node subscribes to The custom message containing the robot's position and velocity. 
  * It calculates the distance traveled by the robot and the average speed. 
  * The calculated values are printed to the console.
  *  
  * \author Baba HADJ SAID
  * \date 24/05/2023
*/




#include <ros/ros.h>
#include <stdio.h>
#include <assignment_2_2022/PlanningAction.h>
#include "client_action/custommsg.h"
#include <actionlib_msgs/GoalStatusArray.h> 
#include <math.h>
#include <chrono>



client_action::custommsg my_msg;  ///< An object of the custom message type `client_action::custommsg`.
assignment_2_2022::PlanningGoal goal;  ///< An object of the goal message type `assignment_2_2022::PlanningGoal`.
std::chrono::time_point<std::chrono::high_resolution_clock> start,end;  ///< Time points created using `std::chrono::high_resolution_clock` for measuring time.
int status,tmp;  ///< Variables for storing the current and previous status.
geometry_msgs::Point startingpose;  ///< A variable of type `geometry_msgs::Point` used for storing the starting position.



/**
 * @brief Callback for calculating the stats.
 *
 * This function is called when a GoalStatusArray message is received on the '/reaching_goal/status' topic.
 * It checks if the status is "Gooal Reached" if so performs calculations of the distance traveled and the average speed, if the status indicates goal completion.
 * It then prints the calculated results.
 *
 * @param msg The GoalStatusArray message received.
 */
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
        ROS_INFO("the distance traveled is %f, and the average speed is %f.",distanceTraveled,avgspeed);  // print the results
      }
    }
    tmp = status;
}

/**
 * @brief Callback function for Updating the velocity and pose of the robot.
 *
 * This function is called when a custom message is received on the '/duplicatedOdom' topic.
 * It copies the received message data into the 'my_msg' variable.
 *
 * @param msg The custom message received.
 */

void CustomMessageCallback(const client_action::custommsg::ConstPtr& msg){
    my_msg = *msg;
}

/**
 * @brief Callback function for handling goal messages.
 *
 * This function is called when a goal message is received on the '/reaching_goal/goal' topic.
 * to set the start time and starting position of the robot, it is needed for the calculations later.
 *
 * @param msg The goal message received.
 */
void goalCallback(const assignment_2_2022::PlanningActionGoal::ConstPtr& msg){
  goal = msg->goal;
  start = std::chrono::high_resolution_clock::now();  // set the start time
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