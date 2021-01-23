#! usr/bin/env python


import rospy
from custom_service_assignment.srv import ServiceMessageCustom,ServiceMessageCustomResponse
from geometry_msgs.msg import Twist
from sensor_msgs.msg import LaserScan
from nav_msgs.msg import Odometry
response = ServiceMessageCustomResponse()

rospy.init_node("custom_service_server")
obstacle = False
publisher = rospy.Publisher("/cmd_vel",Twist,queue_size=1)
laser = LaserScan()
linear_velocity = 0.1
distance_threshold = 0.2
twist = Twist()
odom = Odometry()

def sub_callback(msg):
    global laser
    laser = msg

def service_callback(request):
    global obstacle
    global twist
    global laser
    print(request.distance)
    while (odom.pose.pose.position.x-request.distance)<0 and not obstacle:
        twist.linear.x = linear_velocity
        response.success = True
        response.info = "Bot Moving..."
        if laser.ranges[0]<=distance_threshold:
           obstacle = True
           twist.linear.x = 0
           response.success = False
           response.info = "Obstacle Ahead"
        publisher.publish(twist)
    return response

rospy.Subscriber("/scan",LaserScan,sub_callback)

rospy.Service("ServiceName",ServiceMessageCustom,service_callback)
rospy.loginfo("Service Running!!!")

rospy.spin()