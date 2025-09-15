; Auto-generated. Do not edit!


(cl:in-package prac_ros-msg)


;//! \htmlinclude jdk.msg.html

(cl:defclass <jdk> (roslisp-msg-protocol:ros-message)
  ((answer
    :reader answer
    :initarg :answer
    :type cl:float
    :initform 0.0)
   (jiangdakun
    :reader jiangdakun
    :initarg :jiangdakun
    :type cl:string
    :initform ""))
)

(cl:defclass jdk (<jdk>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <jdk>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'jdk)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name prac_ros-msg:<jdk> is deprecated: use prac_ros-msg:jdk instead.")))

(cl:ensure-generic-function 'answer-val :lambda-list '(m))
(cl:defmethod answer-val ((m <jdk>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader prac_ros-msg:answer-val is deprecated.  Use prac_ros-msg:answer instead.")
  (answer m))

(cl:ensure-generic-function 'jiangdakun-val :lambda-list '(m))
(cl:defmethod jiangdakun-val ((m <jdk>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader prac_ros-msg:jiangdakun-val is deprecated.  Use prac_ros-msg:jiangdakun instead.")
  (jiangdakun m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <jdk>) ostream)
  "Serializes a message object of type '<jdk>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'answer))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'jiangdakun))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'jiangdakun))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <jdk>) istream)
  "Deserializes a message object of type '<jdk>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'answer) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'jiangdakun) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'jiangdakun) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<jdk>)))
  "Returns string type for a message object of type '<jdk>"
  "prac_ros/jdk")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'jdk)))
  "Returns string type for a message object of type 'jdk"
  "prac_ros/jdk")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<jdk>)))
  "Returns md5sum for a message object of type '<jdk>"
  "dcf325aad560bddf55f9bd3131b03903")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'jdk)))
  "Returns md5sum for a message object of type 'jdk"
  "dcf325aad560bddf55f9bd3131b03903")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<jdk>)))
  "Returns full string definition for message of type '<jdk>"
  (cl:format cl:nil "float32 answer~%string jiangdakun~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'jdk)))
  "Returns full string definition for message of type 'jdk"
  (cl:format cl:nil "float32 answer~%string jiangdakun~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <jdk>))
  (cl:+ 0
     4
     4 (cl:length (cl:slot-value msg 'jiangdakun))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <jdk>))
  "Converts a ROS message object to a list"
  (cl:list 'jdk
    (cl:cons ':answer (answer msg))
    (cl:cons ':jiangdakun (jiangdakun msg))
))
