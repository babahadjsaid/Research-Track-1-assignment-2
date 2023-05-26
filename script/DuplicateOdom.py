#! /usr/local/bin/python
from __future__ import print_function
import rospy
from geometry_msgs.msg import Twist,Vector3,Point

from client_action.msg import custommsg
from nav_msgs.msg import Odometry

class Duplicate:
    
    def __init__(self):
        rospy.init_node("Duplicate_odometry_py")
        self.odomSub = rospy.Subscriber("/odom",Odometry,self.odomCB,queue_size=1000)
        self.cmd_velSub = rospy.Subscriber("cmd_vel",Twist,self.cmdvelCB,queue_size=1000)
        self.pub = rospy.Publisher("duplicatedOdom",custommsg,queue_size=100)
        self.rate = rospy.Rate(rospy.get_param("/PublishFreq"))
        self.linear_vel = Vector3()
        self.angular_vel = Vector3()
        self.pose = Point()
        
    def odomCB(self,mesg):
        self.pose = mesg.pose.pose.position
        
    def cmdvelCB(self,mesg):
        self.linear_vel = mesg.linear
        self.angular_vel = mesg.angular
        
    def main(self):
        while True:
            my_msg = custommsg()
            my_msg.pose = self.pose
            my_msg.angular_vel = self.angular_vel
            my_msg.linear_vel = self.linear_vel
            self.pub.publish(my_msg)
            self.rate.sleep()
            
if __name__ == "__main__":
    Duplicate().main()
