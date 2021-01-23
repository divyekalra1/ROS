#! usr/bin/env python

import rospy
from session_one.srv import CustomServiceMessage,CustomServiceMessageResponse
from sensor_msgs.msg import LaserScan

rospy.init_node("server_service_node")

response = CustomServiceMessageResponse()
laser = LaserScan()
def response_func(request):
    maximum = laser.ranges.max(laser.ranges)
    minimum = laser.ranges.min(laser.ranges)
    for i in range(360):
        if laser.ranges[i]==maximum:
            response.distanceIndices[0] = i
        elif laser.ranges[i]==minimum:
            response.distanceIndices[1] = i
    return response

def subcribed_func(msg):
    global laser
    laser = msg

rospy.Subscriber("/scan",LaserScan,subcribed_func)
server = rospy.Service("/Arda",CustomServiceMessage,response_func)
rospy.loginfo("Custom Server Running")

rospy.spin()