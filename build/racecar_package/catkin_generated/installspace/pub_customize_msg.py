#!/usr/bin/env python2
# -*- coding: utf-8 -*-

"""
    发布方:
        循环发送消息

"""
import rospy
from racecar_package.msg import customize_msg


if __name__ == "__main__":
    #1.初始化 ROS 节点
    rospy.init_node("pub_customize_msg_node")
    #2.创建发布者对象(会话名, 消息类型)
    pub = rospy.Publisher("msg",customize_msg,queue_size=10)
    #3.组织消息
    p = customize_msg()
    p.name = "葫芦瓦"
    p.age = 18
    p.height = 0.75

    #4.编写消息发布逻辑
    rate = rospy.Rate(1)
    while not rospy.is_shutdown():
        pub.publish(p)  #发布消息
        rate.sleep()  #休眠
        rospy.loginfo("姓名:%s, 年龄:%d, 身高:%.2f",p.name, p.age, p.height)
