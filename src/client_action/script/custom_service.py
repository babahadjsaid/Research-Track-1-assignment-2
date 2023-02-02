#! /usr/local/bin/python
from __future__ import print_function
import rospy
from client_action.srv import my_service,my_serviceResponse
from actionlib_msgs.msg import GoalStatusArray
from std_msgs.msg import String


class My_Service:
    
    statuss = 0
    tmp = 0
    num_reached_goal=0
    num_canceled=0; 
    myString = String()
    def __init__(self):
        self.pub = rospy.Publisher("custom_service_topic",String,queue_size=1000)
        rospy.init_node("custom_service_py")
        self.service = rospy.Service("my_custom_server_py",my_service,self.callback)
        self.subscriber = rospy.Subscriber("/reaching_goal/status",GoalStatusArray,self.MyCallBack,queue_size=100)
    def MyCallBack(self,message):
        if (len(message.status_list) > 0):
            self.statuss = message.status_list[0].status
        
        if(self.statuss==3):
            if self.statuss !=self.tmp:
                self.num_reached_goal+=1
                self.myString.data = f"number of Goal Reached is {self.num_reached_goal}"
                self.pub.publish(self.myString)
        if(self.statuss==2):
            if self.statuss !=self.tmp:
                self.num_canceled+=1
                self.myString.data = f"number of Goal Reached is {self.num_canceled}"
                self.pub.publish(self.myString)
        self.tmp = self.statuss

    def callback(self,req):
        rospy.loginfo(f"the number of goal reached is {self.num_reached_goal}\nThe number of goal cacelled is {self.num_canceled}")
        return my_serviceResponse()
    def main(self):
        
        rospy.loginfo("All Set..")
        rospy.spin()


if __name__ == "__main__":
    My_Service().main()
