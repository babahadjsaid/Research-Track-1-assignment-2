#! /usr/local/bin/python

from __future__ import print_function
import rospy,math,time

from assignment_2_2022.msg import PlanningActionGoal,PlanningGoal
from actionlib_msgs.msg import GoalStatusArray
from client_action.msg import custommsg
from geometry_msgs.msg import Point
class Subscribre:
    def __init__(self):
        self.goal = PlanningGoal()
        self.my_msg = custommsg()
        self.status = 0
        self.tmp = 0
        self.start = 0
        self.startingPose = Point()
        rospy.init_node("subscriber_python")
        odomSub = rospy.Subscriber("/duplicatedOdom",custommsg,self.DOCallback,queue_size=1000)
        goalSub = rospy.Subscriber("/reaching_goal/goal",PlanningActionGoal,self.GoalCallback,queue_size=1000)
        statusSub = rospy.Subscriber("/reaching_goal/status",GoalStatusArray,self.SCallback,queue_size=1000)
    def DOCallback(self,msg):
        self.my_msg = msg
    def GoalCallback(self,msg):
        self.goal = msg.goal
        self.startingPose = self.my_msg.pose
        self.start = time.perf_counter()
        print("started moving..")
    def SCallback(self,msg):
        if (len(msg.status_list)>0):
            self.status= msg.status_list[0].status
        if(self.status==3):
            if self.status !=self.tmp:
                end = time.perf_counter()
                duration = (end-self.start)#/1000.0
                distanceTraveled = math.sqrt((self.my_msg.pose.x - self.startingPose.x)**2 + (self.my_msg.pose.y - self.startingPose.y)**2)
                avgspeed = distanceTraveled/duration
                print("duration is ",duration," distance is ",distanceTraveled," avg speed ",avgspeed)
        self.tmp = self.status
        
    def main(self):
        rospy.loginfo("starting the loop")
        rospy.spin()
        
if __name__ == "__main__":
    Subscribre().main()
