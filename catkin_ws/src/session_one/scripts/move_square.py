#! usr/bin/env python

import rospy
from std_msgs.msg import Int32
from geometry_msgs.msg import Twist
import math,time

rospy.init_node("myNode")
angular_speed = 30

var = Twist()
def publishFunc(value):
    for i in range(4):
        startTime = time.time()
        while (time.time()-startTime)<value.data and not rospy.is_shutdown(): 
            var.linear.x = 0.07
            publisher.publish(var)   
        else:
            rotate()

def rotate():
    var.linear.x = 0
    startTime = time.time()
    while (time.time()-startTime)< 90/angular_speed and not rospy.is_shutdown():
        var.angular.z = angular_speed*math.pi/180
        publisher.publish(var)
    else:
        var.angular.z = 0   
        publisher.publish(var)

rospy.Subscriber("/your_word_is_your_wand",Int32,publishFunc)
publisher = rospy.Publisher('/cmd_vel',Twist,queue_size=1)

rospy.spin()