#! /usr/bin/env python
# -*- coding: utf-8 -*-
 
import rospy
#import message type
from std_msgs.msg import String

#print subscription data
def doMsg(msg):
    rospy.loginfo("I heard:%s",msg.data)

if __name__ == "__main__":
    #init ros node
    rospy.init_node("subscription_node")

    #create subscription object(topicName, message type)
    sub = rospy.Subscriber("chatter",String,doMsg,queue_size=10)

    rospy.spin()
