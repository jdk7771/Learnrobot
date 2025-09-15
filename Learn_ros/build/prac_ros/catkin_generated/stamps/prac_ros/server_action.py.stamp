#! usr/bin/env python 
import rospy
import actionlib

from prac_ros.msg import timebackAction, timebackFeedback, timebackResult

global server

def callback(goal):
    feedback = timebackFeedback()
    result = timebackResult()

    for i in range(goal.dish_count):
        global server
        if server.is_preempt_requested():
            rospy.logerr("preempt")
            server.set_preempted()

        feedback.progress = float(i)/goal.dish_count
        server.publish_feedback(feedback)
        rospy.sleep(0.5)

    result.success = True
    result.result_message = "finish"
    server.set_succeeded(result)

rospy.init_node("serveraction_node")
server = actionlib.SimpleActionServer("gotop",timebackAction,callback,False)
server.start()
rospy.spin()