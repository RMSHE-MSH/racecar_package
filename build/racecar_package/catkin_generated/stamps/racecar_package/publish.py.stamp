#! /usr/bin/env python
# -*- coding: utf-8 -*-

import rospy
#import message type
from std_msgs.msg import String

if __name__ == "__main__":
    #init ros node
    rospy.init_node("publish_node")

    #create publish object(topicName, message type)
    pub = rospy.Publisher("chatter",String,queue_size=10)

    #Create data types
    msg = String()

    #publish number
    count = 0

    #set publish frequency (1s)
    rate = rospy.Rate(1)

    #publish data
    rospy.sleep(3)
    while not rospy.is_shutdown():
        msg.data = "hello" + str(count)

        pub.publish(msg)#publish data
        rate.sleep()

        #print publish data
        rospy.loginfo("data:%s",msg.data)
        count += 1
