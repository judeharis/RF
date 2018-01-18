#!/usr/bin/env python

import rospy

from geometry_msgs.msg import Twist
from sensor_msgs.msg import LaserScan


class ReadScan:

    range_value = 1 # anything to start with

    def query_range(self):
        return self.range_value

    def scan_callback(self, msg):
        import math
        self.range_value = min(msg.ranges)
        # If the object is not within the sensor's working range, range_value will be NaN; so let's 		set it to 0
        if math.isnan(self.range_value):
            self.range_value = 0
        #rospy.loginfo(self.range_value)








# The queue_size=1 argument tells rospy to only buffer a single outbound message. In case the node sending the messages is transmitting at a higher rate than the receiving node(s) can receive them, rospy will simply drop any messages beyond the queue_size.

rospy.init_node('wander')


rs = ReadScan()
scan_sub = rospy.Subscriber('scan', LaserScan, rs.scan_callback)
cmd_vel_pub = rospy.Publisher('cmd_vel', Twist, queue_size=1)


# The message constructors set all fields to zero. Therefore, the stop_twist message tells a robot to stop, since all of its velocity subcomponents are zero.
stop_twist = Twist()
go_twist = Twist()

# The x component of the linear velocity in a Twist message is, by convention, aligned in the direction the robot is facing, so this line means drive straight ahead at 0.5 meters per second.
go_twist.linear.x = 0.5
stop_twist.linear.x = 0
stop_twist.angular.z = 1


driving_forward = False

# Checkout how time works in ROS -- http://wiki.ros.org/rospy/Overview/Time
change_time = rospy.Time.now()
rate = rospy.Rate(10)

while not rospy.is_shutdown():
    if driving_forward:
# We need to continually publish a stream of velocity command messages, since most mobile base drivers will time out and stop the robot if they do not receive at least several messages per second.
        cmd_vel_pub.publish(go_twist)
        if rs.range_value < 0.8 and rs.range_value > 0 :
            driving_forward = False;
            rospy.loginfo("0.8 Turn at " + str(rs.range_value))
    else:
        cmd_vel_pub.publish(stop_twist)

# This branch checks the system time and toggles it periodically.
    if change_time < rospy.Time.now():
        #rospy.loginfo("Toogling behaviour!")
        driving_forward = not driving_forward
        if driving_forward:
            rospy.loginfo("GO!")
        else:
            rospy.loginfo("STOP TWIST!")
            
        change_time = rospy.Time.now() + rospy.Duration(5)
       

    
# Without this call to rospy.sleep() the code would still run, but it would send far too many messages, and take up an entire CPU core!
    rate.sleep()






