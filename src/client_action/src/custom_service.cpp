#include <ros/ros.h>
#include <actionlib/client/simple_action_client.h>
#include <actionlib/client/terminal_state.h>
#include <assignment_2_2022/PlanningAction.h>
#include <actionlib_msgs/GoalStatusArray.h>
#include <stdio.h>
#include "std_msgs/String.h"
#include <sstream>
#include <std_srvs/Trigger.h>

int status,tmp;
int num_reached_goal=0,num_canceled=0; 
std_msgs::String myString;
ros::Publisher pub;
char  ss[30];
void MyCallBack(const actionlib_msgs::GoalStatusArray::ConstPtr& msg){

  if (!msg->status_list.empty()){
  status= msg->status_list[0].status;
  }
  if(status == 3){
    if(status != tmp){
      num_reached_goal++;
      sprintf(ss,"num of Goal Reached is %d",num_reached_goal);
      myString.data = ss;
      pub.publish(myString);
    }
  }else if(status==2){
    if(status != tmp){
      num_canceled++;
      sprintf(ss,"num of Goal cancelled is %d",num_canceled);
      myString.data = ss;
      pub.publish(myString);
    }  
  }
  tmp = status;
}

bool callback(std_srvs::Trigger::Request& req, std_srvs::Trigger::Response& res)
{
    ROS_INFO("the number of goal reached is %d\nThe number of goal cacelled is %d",num_reached_goal,num_canceled);
    res.success = true;
    return true;
}

int main (int argc, char **argv)
{
	//init a node 
  ros::init(argc, argv, "custom_service");

  ros::NodeHandle nodeHandler;
  //create a subscriber to listen to the status 
  ros::Subscriber sub = nodeHandler.subscribe("/reaching_goal/status", 100, MyCallBack);
  //create a my topic called custom_service_topic
  pub = nodeHandler.advertise<std_msgs::String>("custom_service_topic", 1000);
  //create the service "my_custom_server_topic" 
  ros::ServiceServer service = nodeHandler.advertiseService("my_custom_server_topic", callback);
  // ros spin to execute callback
  ros::spin();
  return 0;
}