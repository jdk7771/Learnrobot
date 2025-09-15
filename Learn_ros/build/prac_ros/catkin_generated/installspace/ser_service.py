#!/usr/bin/env python3
import rospy
from prac_ros.srv import SrvJdk,SrvJdkResponse



class Count_word_srv():
    def __init__(self,srv_name,srv_type):
        rospy.init_node("srv_name")
        self.srv_name = "srv_name"
        self.srv_type = srv_type
        self.__set_client__()
        self.__set_service__()
        self.retu = 0
    def __set_service__(self):
        self.server = rospy.Service(self.srv_name,self.srv_type,callback)
    def __set_client__(self):
        self.client = rospy.ServiceProxy(self.srv_name,self.srv_type)

    def send_request(self,request):
        self.retu = self.client(request)
        print(self.retu)
def callback(request):
    num = list(request.words.split())
    return {'count':len(num)}

Count = Count_word_srv("srr",SrvJdk)
tt = Count.send_request("sdasd a das")
# rospy.init_node("srv_clinet")
# try:
#     service = rospy.Service('word_count',SrvJdk,callback)
#     print("服务正常建立")
# except Exception as e:
#     print(f"服务建立失败{e}")
# rospy.spin()