
from session_one.msg import JangoFett
import rospy,math,time
from geometry_msgs.msg import Twist

var = Twist()
angular_speed = 30
linear_velocity = 0.1
rospy.init_node("UpgradedNode")
publisher = rospy.Publisher('/cmd_vel',Twist,queue_size=1)

def check(value):
    def rotate(a):
        var.linear.x = 0
        startTime = time.time()
        while (time.time()-startTime)< 90/angular_speed and not rospy.is_shutdown():
            var.angular.z = a*angular_speed*math.pi/180
            publisher.publish(var)
        else:
            var.angular.z = 0   
            publisher.publish(var)
    if value.shape.data=="square":
        for i in range(4):
            startTime = time.time()
            while (time.time()-startTime)< value.side.data and not rospy.is_shutdown(): 
                var.linear.x = linear_velocity
                publisher.publish(var)   
            else:
                rotate(1)
    elif value.shape.data=="circle":
        rotate(-1)
        var.linear.x = linear_velocity
        var.angular.z = var.linear.x/value.side.data
        publisher.publish(var)
    else:
        var.linear.x = 0
        var.angular.z = 0   
        publisher.publish(var)

rospy.Subscriber("/darkside",JangoFett,check)
rospy.spin()

