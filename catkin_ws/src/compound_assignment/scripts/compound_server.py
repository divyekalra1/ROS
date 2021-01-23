#! usr/bin/env python

from compound_assignment.srv import CustomServiceMessage,CustomServiceMessageResponse
from geometry_msgs.msg import Twist
from nav_msgs.msg import Odometry
from compound_assignment.msg import odomDataAction,odomDataFeedback,odomDataResult
import rospy,math,time,actionlib

rospy.init_node("CompoundServerNode")
class CompoundServer:
    def __init__(self):
        self.server = actionlib.SimpleActionServer("readingOdom",odomDataAction,self.goal_callback,False)
        self.result = odomDataResult()
        self.feedback = odomDataFeedback()
        self.odom = Odometry()
        self.twist = Twist()
        self.angular_speed = 30
        self.linear_velocity = 0.1
        self.publisher = rospy.Publisher('/cmd_vel',Twist,queue_size=1)
        self.service_server = rospy.Service("service_server",CustomServiceMessage,self.service_callback)
        self.odom = Odometry()
        self.server.start()
        rospy.loginfo("Action Server Running Now")
    def goal_callback(self,goal):
        self.startTime = time.time()
        while (time.time()-self.startTime)<=goal.seconds:
            self.sub = rospy.Subscriber("/odom",Odometry,self.sub_callback)
            if (time.time()-self.startTime).is_integer():
                self.server.publish_feedback(self.feedback)
        self.sub.unregister()
        self.server.set_succeeded(self.result)
    def service_callback(request):
        def rotate(a):
            self.twist.linear.x = 0
            self.startTime = time.time()
            while (time.time()-self.startTime)< 90/angular_speed and not rospy.is_shutdown():
                self.twist.angular.z = a*angular_speed*math.pi/180
                self.publisher.publish(self.twist)
            else:
                self.twist.angular.z = 0   
                self.publisher.publish(self.twist)
        if request.shape.data=="square":
            for i in range(4):
                startTime = time.time()
                while (time.time()-startTime)< request.side.data and not rospy.is_shutdown(): 
                    self.twist.linear.x = self.linear_velocity
                    self.publisher.publish(self.twist)   
                else:
                    rotate(1)
        elif request.shape.data=="circle":
            rotate(-1)
            self.twist.linear.x = self.linear_velocity
            self.twist.angular.z = self.twist.linear.x/request.side.data
            self.publisher.publish(self.twist)
        else:
            self.twist.linear.x = 0
            self.twist.angular.z = 0   
            self.publisher.publish(self.twist)
    def sub_callback(self,odata):
        self.odom = odata
        self.feedback.currentValues = self.odom
        self.result.allValues.extend((odata.pose.pose.position.x,odata.pose.pose.position.y,odata.pose.pose.position.z))
CompoundServer()           
rospy.spin()

