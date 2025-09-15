; Auto-generated. Do not edit!


(cl:in-package prac_ros-srv)


;//! \htmlinclude SrvJdk-request.msg.html

(cl:defclass <SrvJdk-request> (roslisp-msg-protocol:ros-message)
  ((words
    :reader words
    :initarg :words
    :type cl:string
    :initform ""))
)

(cl:defclass SrvJdk-request (<SrvJdk-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SrvJdk-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SrvJdk-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name prac_ros-srv:<SrvJdk-request> is deprecated: use prac_ros-srv:SrvJdk-request instead.")))

(cl:ensure-generic-function 'words-val :lambda-list '(m))
(cl:defmethod words-val ((m <SrvJdk-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader prac_ros-srv:words-val is deprecated.  Use prac_ros-srv:words instead.")
  (words m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SrvJdk-request>) ostream)
  "Serializes a message object of type '<SrvJdk-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'words))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'words))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SrvJdk-request>) istream)
  "Deserializes a message object of type '<SrvJdk-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'words) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'words) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SrvJdk-request>)))
  "Returns string type for a service object of type '<SrvJdk-request>"
  "prac_ros/SrvJdkRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SrvJdk-request)))
  "Returns string type for a service object of type 'SrvJdk-request"
  "prac_ros/SrvJdkRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SrvJdk-request>)))
  "Returns md5sum for a message object of type '<SrvJdk-request>"
  "58903d21a3264f3408d79ba79e9f7c7e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SrvJdk-request)))
  "Returns md5sum for a message object of type 'SrvJdk-request"
  "58903d21a3264f3408d79ba79e9f7c7e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SrvJdk-request>)))
  "Returns full string definition for message of type '<SrvJdk-request>"
  (cl:format cl:nil "string words~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SrvJdk-request)))
  "Returns full string definition for message of type 'SrvJdk-request"
  (cl:format cl:nil "string words~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SrvJdk-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'words))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SrvJdk-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SrvJdk-request
    (cl:cons ':words (words msg))
))
;//! \htmlinclude SrvJdk-response.msg.html

(cl:defclass <SrvJdk-response> (roslisp-msg-protocol:ros-message)
  ((count
    :reader count
    :initarg :count
    :type cl:integer
    :initform 0))
)

(cl:defclass SrvJdk-response (<SrvJdk-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SrvJdk-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SrvJdk-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name prac_ros-srv:<SrvJdk-response> is deprecated: use prac_ros-srv:SrvJdk-response instead.")))

(cl:ensure-generic-function 'count-val :lambda-list '(m))
(cl:defmethod count-val ((m <SrvJdk-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader prac_ros-srv:count-val is deprecated.  Use prac_ros-srv:count instead.")
  (count m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SrvJdk-response>) ostream)
  "Serializes a message object of type '<SrvJdk-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'count)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'count)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'count)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'count)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SrvJdk-response>) istream)
  "Deserializes a message object of type '<SrvJdk-response>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'count)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'count)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'count)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'count)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SrvJdk-response>)))
  "Returns string type for a service object of type '<SrvJdk-response>"
  "prac_ros/SrvJdkResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SrvJdk-response)))
  "Returns string type for a service object of type 'SrvJdk-response"
  "prac_ros/SrvJdkResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SrvJdk-response>)))
  "Returns md5sum for a message object of type '<SrvJdk-response>"
  "58903d21a3264f3408d79ba79e9f7c7e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SrvJdk-response)))
  "Returns md5sum for a message object of type 'SrvJdk-response"
  "58903d21a3264f3408d79ba79e9f7c7e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SrvJdk-response>)))
  "Returns full string definition for message of type '<SrvJdk-response>"
  (cl:format cl:nil "uint32 count~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SrvJdk-response)))
  "Returns full string definition for message of type 'SrvJdk-response"
  (cl:format cl:nil "uint32 count~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SrvJdk-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SrvJdk-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SrvJdk-response
    (cl:cons ':count (count msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SrvJdk)))
  'SrvJdk-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SrvJdk)))
  'SrvJdk-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SrvJdk)))
  "Returns string type for a service object of type '<SrvJdk>"
  "prac_ros/SrvJdk")