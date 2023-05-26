/**
  * \file custom_service.cpp 
  * \brief Node implementing a custom service.
  * 
  *
  * \details
  *
  * Subscribes to: <BR>
  *   ° /reaching_goal/status
  *
  *
  * Services : <BR>
  * ° /my_custom_server_topic
  *
  * Description :
  * 
  * This node provides a service "/my_custom_server_topic" that prints the number of goals reached and canceled when the service is called.
  * to acheive this it subscribes to the topic '/reaching_goal/status' and increaments the counter according to the data received on that topic.
  * 
  * \author Baba HADJ SAID
  * \date 24/05/2023
*/




#include <ros/ros.h>
#include <actionlib/client/simple_action_client.h>
#include <actionlib/client/terminal_state.h>
#include <assignment_2_2022/PlanningAction.h>
#include <actionlib_msgs/GoalStatusArray.h>

#include <sstream>
#include <std_srvs/Trigger.h>



int status; ///< current goal status.
int tmp; ///< holds previous goal status. 
int num_reached_goal=0,num_canceled=0;  ///< reached and cancelled counters.




/**
 * @brief Callback function for updating the reached and cancelled counters.
 *
 * This function is called when a message is received on the topic "/reaching_goal/status". 
 * If the status is 3 (goal reached), it increments the count of reached goals.
 * If the status is 2 (goal canceled), it increments the count of canceled goals.
 * It also keeps track of the previous status value (tmp) to detect changes in status and avoid duplicate publishing of messages.

 * @param msg The received GoalStatusArray message.
 */
void MyCallBack(const actionlib_msgs::GoalStatusArray::ConstPtr& msg){

  if (!msg->status_list.empty()){
  status= msg->status_list[0].status;
  }
  if(status == 3){
    if(status != tmp){
      num_reached_goal++;
    }
  }else if(status==2){
    if(status != tmp){
      num_canceled++;
    }  
  }
  tmp = status;
}

/**
 * 
 * @brief Callback function for handling Trigger service requests.
 *
 * This function is called when a Trigger service is called. 
 * It prints information about the number of goals reached and goals canceled.
 * The function sets the response success field to true, indicating a successful response.
 * 
 * @param req The Trigger service request object.
 * @param res The Trigger service response object.
 * @return True to indicate a successful service call.
 */
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
  //create the service "my_custom_server_topic" 
  ros::ServiceServer service = nodeHandler.advertiseService("my_custom_server_topic", callback);
  // ros spin to execute callback
  ros::spin();
  return 0;
}