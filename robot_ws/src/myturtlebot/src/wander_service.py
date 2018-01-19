#!/usr/bin/env python

import rospy

from geometry_msgs.msg import Twist
from sensor_msgs.msg import LaserScan


class ReadScan:

    range_value = 1 # anything to start with
    driving_forward = False
    
    def query_range(self):
        return self.range_value

    def scan_callback(self, msg):
        import math
        self.range_value = min(msg.ranges)
        # If the object is not within the sensor's working range, range_value will be NaN; so let's 		set it to 0
        if math.isnan(self.range_value):
            self.range_value = 0
        #rospy.loginfo(self.range_value)
        
    def service_callback(self, rqst):
        rospy.loginfo("Requesting to change status? "+str(rqst.forwardrqst))
        self.driving_forward = rqst.forwardrqst
        ans = TurtlebotStatusResponse()
        ans.range = self.range_value
        ans.forwardresp = self.driving_forward
        return ans








# The queue_size=1 argument tells rospy to only buffer a single outbound message. In case the node sending the messages is transmitting at a higher rate than the receiving node(s) can receive them, rospy will simply drop any messages beyond the queue_size.

rospy.init_node('wander_service')


range_sensor = ReadScan()
scan_sub = rospy.Subscriber('scan', LaserScan, range_sensor.scan_callback)
cmd_vel_pub = rospy.Publisher('cmd_vel', Twist, queue_size=1)
status_srv = rospy.Service('turtlebot_status',  QueryRange, range_sensor.service_callback)



# The message constructors set all fields to zero. Therefore, the stop_twist message tells a robot to stop, since all of its velocity subcomponents are zero.
stop_twist = Twist()
go_twist = Twist()

# The x component of the linear velocity in a Twist message is, by convention, aligned in the direction the robot is facing, so this line means drive straight ahead at 0.5 meters per second.
go_twist.linear.x = 0.5
stop_twist.linear.x = 0
stop_twist.angular.z = 1



# Checkout how time works in ROS -- http://wiki.ros.org/rospy/Overview/Time
change_time = rospy.Time.now()
rate = rospy.Rate(10)

stoptwistcounter = 0

while not rospy.is_shutdown():
    if range_sensor.driving_forward:
        cmd_vel_pub.publish(go_twist)
        if rs.range_value < 0.8 and rs.range_value > 0 :
            range_sensor.driving_forward = False;
            rospy.loginfo("0.8 Turn at " + str(range_sensor.range_value))
    else:
        if range_sensor.range_value > 0.8 or range_sensor.range_value == 0 and stoptwistcounter == 0:
            range_sensor.driving_forward = True;
            rospy.loginfo("0.8 Moving" + str(range_sensor.range_value))
        if stoptwistcounter > 0:
            stoptwistcounter-=1
        cmd_vel_pub.publish(stop_twist)

# This branch checks the system time and toggles it periodically.
    if change_time < rospy.Time.now():
        #rospy.loginfo("Toogling behaviour!")
        range_sensor.driving_forward = not range_sensor.driving_forward
        if range_sensor.driving_forward:
            rospy.loginfo("GO!")
        else:
            rospy.loginfo("STOP TWIST!")
            stoptwistcounter = 20
        change_time = rospy.Time.now() + rospy.Duration(5)
       

    
# Without this call to rospy.sleep() the code would still run, but it would send far too many messages, and take up an entire CPU core!
    rate.sleep()






