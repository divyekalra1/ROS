#! usr/bin/env python

import rospy
from std_msgs.msg import Int32
rospy.init_node("inputNode")

pub = rospy.Publisher('/your_word_is_your_wand',Int32,queue_size=1)
rate = rospy.Rate(5)
value = Int32()
while not rospy.is_shutdown():
    value.data = int(input())
    pub.publish(value.data)
    rate.sleep()

