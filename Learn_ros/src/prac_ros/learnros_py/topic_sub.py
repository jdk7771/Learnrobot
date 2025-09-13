#!/usr/bin/env/ python
import rospy
import std_msgs

def callback(msg):
    print(f'接收到的消息是{msg}')
    
rospy.init_node("topic_no")
sub = rospy.Subscriber('pubilish_int32',std_msgs.msg.Int32,callback)
while(1):
    continue