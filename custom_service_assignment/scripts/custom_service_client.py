#! usr/bin/env python


import rospy
from custom_service_assignment.srv import ServiceMessageCustom,ServiceMessageCustomRequest
from geometry_msgs.msg import Twist

rospy.init_node("service_client_node")
linear_velocity = 0.1
distance_goal = 0.4
publisher = rospy.Publisher("/cmd_vel",Twist,queue_size=1)

rospy.wait_for_service("ServiceName")

request = ServiceMessageCustomRequest()
request.distance = distance_goal

proxy = rospy.ServiceProxy("ServiceName",ServiceMessageCustom)

rate = rospy.Rate(5)

while not rospy.is_shutdown():
    global request
    result = proxy(request)
    print result.info," Success: ",result.success
    rate.sleep()