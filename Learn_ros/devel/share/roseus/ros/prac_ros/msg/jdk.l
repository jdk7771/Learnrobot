;; Auto-generated. Do not edit!


(when (boundp 'prac_ros::jdk)
  (if (not (find-package "PRAC_ROS"))
    (make-package "PRAC_ROS"))
  (shadow 'jdk (find-package "PRAC_ROS")))
(unless (find-package "PRAC_ROS::JDK")
  (make-package "PRAC_ROS::JDK"))

(in-package "ROS")
;;//! \htmlinclude jdk.msg.html


(defclass prac_ros::jdk
  :super ros::object
  :slots (_answer _jiangdakun ))

(defmethod prac_ros::jdk
  (:init
   (&key
    ((:answer __answer) 0.0)
    ((:jiangdakun __jiangdakun) "")
    )
   (send-super :init)
   (setq _answer (float __answer))
   (setq _jiangdakun (string __jiangdakun))
   self)
  (:answer
   (&optional __answer)
   (if __answer (setq _answer __answer)) _answer)
  (:jiangdakun
   (&optional __jiangdakun)
   (if __jiangdakun (setq _jiangdakun __jiangdakun)) _jiangdakun)
  (:serialization-length
   ()
   (+
    ;; float32 _answer
    4
    ;; string _jiangdakun
    4 (length _jiangdakun)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _answer
       (sys::poke _answer (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; string _jiangdakun
       (write-long (length _jiangdakun) s) (princ _jiangdakun s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _answer
     (setq _answer (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; string _jiangdakun
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _jiangdakun (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get prac_ros::jdk :md5sum-) "dcf325aad560bddf55f9bd3131b03903")
(setf (get prac_ros::jdk :datatype-) "prac_ros/jdk")
(setf (get prac_ros::jdk :definition-)
      "float32 answer
string jiangdakun
")



(provide :prac_ros/jdk "dcf325aad560bddf55f9bd3131b03903")


