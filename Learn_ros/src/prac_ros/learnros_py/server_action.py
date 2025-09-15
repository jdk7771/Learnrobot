#! usr/bin/env python 
import rospy
import actionlib

from prac_ros.msg import timebackAction, timebackFeedback, timebackResult

global server

def callback(goal):
    rospy.loginfo("服务器已启动，已经连接...")  # 启动日志，确认服务器正常
    feedback = timebackFeedback()
    result = timebackResult()

    for i in range(1, goal.dish_count + 1):
        global server
        if server.is_preempt_requested():
            rospy.logerr("preempt")
            server.set_preempted()
            return
        feedback.progress = float(i)/goal.dish_count
        server.publish_feedback(feedback)
        rospy.sleep(0.5)

    result.success = True
    result.result_message = "finish"
    server.set_succeeded(result)

rospy.init_node("serveraction_node")
server = actionlib.SimpleActionServer("gotop",timebackAction,callback,False)
server.start()
rospy.loginfo("服务器已启动，等待客户端连接...")  # 启动日志，确认服务器正常
rospy.spin()