#! /usr/local/bin/python
from __future__ import print_function
import sys
import roslib
roslib.load_manifest('client_action')
import rospy
import actionlib
from assignment_2_2022.msg import PlanningAction,PlanningGoal

def actionclient():
    client = actionlib.SimpleActionClient('/reaching_goal', PlanningAction)
    client.wait_for_server()
    while True:
        choice = input("Please enter a position you want the robot to navigate to syntax:x,y\nif you want to cancel enter c,and to exit enter q\nyour choice:")
        if choice =='c':
            client.cancel_goal()
            continue
        elif choice=='q':
            return 
        positions = [float(i) for i in choice.split(',')]
        goal = PlanningGoal()
        goal.target_pose.pose.position.x = positions[0]
        goal.target_pose.pose.position.y = positions[1]
        client.send_goal(goal)

    

if __name__ == '__main__':
    try:
        rospy.init_node('actionClient_py')
        result = actionclient()
        
    except rospy.ROSInterruptException:
        print("program interrupted before completion", file=sys.stderr)