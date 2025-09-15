;; Auto-generated. Do not edit!


(when (boundp 'prac_ros::SrvJdk)
  (if (not (find-package "PRAC_ROS"))
    (make-package "PRAC_ROS"))
  (shadow 'SrvJdk (find-package "PRAC_ROS")))
(unless (find-package "PRAC_ROS::SRVJDK")
  (make-package "PRAC_ROS::SRVJDK"))
(unless (find-package "PRAC_ROS::SRVJDKREQUEST")
  (make-package "PRAC_ROS::SRVJDKREQUEST"))
(unless (find-package "PRAC_ROS::SRVJDKRESPONSE")
  (make-package "PRAC_ROS::SRVJDKRESPONSE"))

(in-package "ROS")





(defclass prac_ros::SrvJdkRequest
  :super ros::object
  :slots (_words ))

(defmethod prac_ros::SrvJdkRequest
  (:init
   (&key
    ((:words __words) "")
    )
   (send-super :init)
   (setq _words (string __words))
   self)
  (:words
   (&optional __words)
   (if __words (setq _words __words)) _words)
  (:serialization-length
   ()
   (+
    ;; string _words
    4 (length _words)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _words
       (write-long (length _words) s) (princ _words s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _words
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _words (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass prac_ros::SrvJdkResponse
  :super ros::object
  :slots (_count ))

(defmethod prac_ros::SrvJdkResponse
  (:init
   (&key
    ((:count __count) 0)
    )
   (send-super :init)
   (setq _count (round __count))
   self)
  (:count
   (&optional __count)
   (if __count (setq _count __count)) _count)
  (:serialization-length
   ()
   (+
    ;; uint32 _count
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _count
       (write-long _count s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _count
     (setq _count (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass prac_ros::SrvJdk
  :super ros::object
  :slots ())

(setf (get prac_ros::SrvJdk :md5sum-) "58903d21a3264f3408d79ba79e9f7c7e")
(setf (get prac_ros::SrvJdk :datatype-) "prac_ros/SrvJdk")
(setf (get prac_ros::SrvJdk :request) prac_ros::SrvJdkRequest)
(setf (get prac_ros::SrvJdk :response) prac_ros::SrvJdkResponse)

(defmethod prac_ros::SrvJdkRequest
  (:response () (instance prac_ros::SrvJdkResponse :init)))

(setf (get prac_ros::SrvJdkRequest :md5sum-) "58903d21a3264f3408d79ba79e9f7c7e")
(setf (get prac_ros::SrvJdkRequest :datatype-) "prac_ros/SrvJdkRequest")
(setf (get prac_ros::SrvJdkRequest :definition-)
      "string words
---
uint32 count
")

(setf (get prac_ros::SrvJdkResponse :md5sum-) "58903d21a3264f3408d79ba79e9f7c7e")
(setf (get prac_ros::SrvJdkResponse :datatype-) "prac_ros/SrvJdkResponse")
(setf (get prac_ros::SrvJdkResponse :definition-)
      "string words
---
uint32 count
")



(provide :prac_ros/SrvJdk "58903d21a3264f3408d79ba79e9f7c7e")


