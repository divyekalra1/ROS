#! usr/bin/env python

import rospy
import actionlib
from nav_msgs.msg import Odometry
from as_assignment.msg import odomDataAction,odomDataFeedback,odomDataResult
import time

rospy.init_node("action_server_node")

class SimpleActionServer:

    def __init__(self):
        self.server = actionlib.SimpleActionServer("readingOdom",odomDataAction,self.goal_callback,False)
        self.result = odomDataResult()
        self.feedback = odomDataFeedback()
        self.odom = Odometry()
        self.server.start()
        rospy.loginfo("Action Server Running")
    def goal_callback(self,goal):
        self.startTime = time.time()
        while (time.time()-self.startTime)<=goal.seconds:
            # self.result.allValues[i] = self.laser.ranges[0]
            self.sub = rospy.Subscriber("/odom",Odometry,self.sub_callback)
            if (time.time()-self.startTime).is_integer():
                self.server.publish_feedback(self.feedback)
        self.sub.unregister()
        self.server.set_succeeded(self.result)

    def sub_callback(self,odata):
        self.odom = odata
        self.feedback.currentValues = self.odom
        self.result.allValues.extend((odata.pose.pose.position.x,odata.pose.pose.position.y,odata.pose.pose.position.z))
SimpleActionServer()
rospy.spin()