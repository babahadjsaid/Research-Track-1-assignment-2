/**
  * \file actionClient.cpp 
  * \brief Creates an interface for the user.
  * 
  * \details
  *
  * Action Client: <BR>
  *  ° /reaching_goal
  *
  * Description :
  * 
  * This node creates an interface that allows the user to send goals to the '/reaching_goal' action server.
  * The user can enter a position in the format 'x,y' to navigate the robot to that position.
  * The user can also enter 'c' to cancel the current goal or 'q' to exit the node.
  *  
  * \author Baba HADJ SAID
  * \date 24/05/2023
*/



#include <ros/ros.h>
#include <actionlib/client/simple_action_client.h>
#include <actionlib/client/terminal_state.h>
#include <assignment_2_2022/PlanningAction.h>
#include <stdio.h>


int main (int argc, char **argv)
{
	// initializing the node 
  ros::init(argc, argv, "actionClient");
  //creating an action client 
  actionlib::SimpleActionClient<assignment_2_2022::PlanningAction> client_action("/reaching_goal", true);
  assignment_2_2022::PlanningActionGoal goal;
  
  ROS_INFO("Waiting for action server to start.");
  // wait for the action server to start
  client_action.waitForServer(); 

  ROS_INFO("Action server started, sending goal.");
  char choice[10];
  float x,y;
  while (true)
  {
    std::cout << "Please enter a position you want the robot to navigate to syntax:x,y\nif you want to cancel enter c,and to exit enter q\nyour choice:";
    std::cin >> choice;
    //if the user enters c cancel the goal
    if (choice[0]=='c')
    {
      client_action.cancelGoal(); 
      ROS_INFO("Goal has been cancelled");
      continue;
      //if q quit the node
    }else if(choice[0]=='q'){
      return 0;
    }
    //get the x and y
    sscanf(choice,"%f,%f",&x,&y);
    
    // send a goal to the action
    goal.goal.target_pose.pose.position.x = x;
    goal.goal.target_pose.pose.position.y = y;
    client_action.sendGoal(goal.goal);
    
  }
  return 0;
}