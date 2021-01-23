#! usr/bin/env python

import rospy
from geometry_msgs.msg import Twist
from session_one.srv import CustomServiceMessage,CustomServiceMessageRequest

rospy.init_node("server_client_node")
rospy.wait_for_service("/Arda")

publisher = rospy.Publisher("/cmd_vel",Twist,queue_size=1)
twist = Twist()
twist.linear.x = 0.1
publisher.publish(twist)

request = CustomServiceMessageRequest()


r = rospy.Rate(5)
proxy = rospy.ServiceProxy("/Arda",CustomServiceMessage)
while not rospy.is_shutdown():
    result = proxy()
    print("Max : " + result.distanceIndices[0] + ", Min : " + result.distanceIndices[1] + "\n")
    r.sleep()
rospy.spin()