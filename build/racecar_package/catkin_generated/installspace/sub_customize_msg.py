#!/usr/bin/env python2
# -*- coding: utf-8 -*-
"""
    订阅方:
        订阅消息

"""
import rospy
from racecar_package.msg import customize_msg

def doPerson(p):
    rospy.loginfo("接收到的人的信息:%s, %d, %.2f",p.name, p.age, p.height)


if __name__ == "__main__":
    #1.初始化节点
    rospy.init_node("sub_customize_msg_node")
    #2.创建订阅者对象
    sub = rospy.Subscriber("msg",customize_msg,doPerson,queue_size=10)
    rospy.spin() #4.循环
