#! usr/bin/env python

import rospy
import actionlib
from nav_msgs.msg import Odometry
from geometry_msgs.msg import Twist
from compound_assignment.msg import odomDataAction,odomDataGoal
import time
from compound_assignment.srv import CustomServiceMessage,CustomServiceMessageRequest

PENDING = 0
ACTIVE = 1
DONE = 2
WARN = 3
ERROR = 4
def sub_callback(msg):
    odom = msg
def feedback_callback(feedback):
    for i in range(3):
        print feedback.currentValues


rospy.init_node("action_client_node")
publisher = rospy.Publisher("/cmd_vel",Twist,latch=True,queue_size=1)
rospy.Subscriber("/odom",Odometry,sub_callback)

client = actionlib.SimpleActionClient("/readingOdom",odomDataAction)


request = CustomServiceMessageRequest()
rospy.wait_for_service("service_server")
rospy.loginfo("Service is running!")
proxy = rospy.ServiceProxy("service_server",CustomServiceMessage)
request.shape = "circle"
request.side = 1

client.wait_for_server()

odom = Odometry()
goal = odomDataGoal()
goal.seconds = 5

client.send_goal(goal,feedback_cb=feedback_callback)
resultState = client.get_state()

r = rospy.Rate(5)
while not rospy.is_shutdown() and resultState < DONE:
    rospy.loginfo("Current State :" + str(resultState))
    proxy_result = proxy(request) #sending the request data to the service for the bot to move
    r.sleep()
    resultState = client.get_state()
else:
    rospy.loginfo("Final State : " + str(resultState))

if resultState == ERROR:
    rospy.logerr("Something went wrong")
if resultState == WARN:
    rospy.logwarn("WARNING")
client.wait_for_result()
result = client.get_result()
for i in range(0,len(result.allValues),3):
    print result.allValues[i]," ",result.allValues[i+1]," ",result.allValues[i+2]




