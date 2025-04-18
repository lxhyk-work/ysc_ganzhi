; Auto-generated. Do not edit!


(cl:in-package lslidar_msgs-msg)


;//! \htmlinclude LslidarScanUnified.msg.html

(cl:defclass <LslidarScanUnified> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (packets
    :reader packets
    :initarg :packets
    :type (cl:vector lslidar_msgs-msg:LslidarPacket)
   :initform (cl:make-array 0 :element-type 'lslidar_msgs-msg:LslidarPacket :initial-element (cl:make-instance 'lslidar_msgs-msg:LslidarPacket))))
)

(cl:defclass LslidarScanUnified (<LslidarScanUnified>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LslidarScanUnified>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LslidarScanUnified)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name lslidar_msgs-msg:<LslidarScanUnified> is deprecated: use lslidar_msgs-msg:LslidarScanUnified instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <LslidarScanUnified>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lslidar_msgs-msg:header-val is deprecated.  Use lslidar_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'packets-val :lambda-list '(m))
(cl:defmethod packets-val ((m <LslidarScanUnified>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lslidar_msgs-msg:packets-val is deprecated.  Use lslidar_msgs-msg:packets instead.")
  (packets m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LslidarScanUnified>) ostream)
  "Serializes a message object of type '<LslidarScanUnified>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'packets))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'packets))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LslidarScanUnified>) istream)
  "Deserializes a message object of type '<LslidarScanUnified>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'packets) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'packets)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'lslidar_msgs-msg:LslidarPacket))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LslidarScanUnified>)))
  "Returns string type for a message object of type '<LslidarScanUnified>"
  "lslidar_msgs/LslidarScanUnified")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LslidarScanUnified)))
  "Returns string type for a message object of type 'LslidarScanUnified"
  "lslidar_msgs/LslidarScanUnified")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LslidarScanUnified>)))
  "Returns md5sum for a message object of type '<LslidarScanUnified>"
  "e88461d84a8074809d7778b3a6770073")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LslidarScanUnified)))
  "Returns md5sum for a message object of type 'LslidarScanUnified"
  "e88461d84a8074809d7778b3a6770073")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LslidarScanUnified>)))
  "Returns full string definition for message of type '<LslidarScanUnified>"
  (cl:format cl:nil "#lslidar  scan packets~%~%Header           header         #standard ros message header~%~%LslidarPacket[] packets        #vector of raw packets~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: lslidar_msgs/LslidarPacket~%# Raw Leishen LIDAR packet.~%~%time stamp              # packet timestamp~%uint8[1212] data        # packet contents~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LslidarScanUnified)))
  "Returns full string definition for message of type 'LslidarScanUnified"
  (cl:format cl:nil "#lslidar  scan packets~%~%Header           header         #standard ros message header~%~%LslidarPacket[] packets        #vector of raw packets~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: lslidar_msgs/LslidarPacket~%# Raw Leishen LIDAR packet.~%~%time stamp              # packet timestamp~%uint8[1212] data        # packet contents~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LslidarScanUnified>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'packets) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LslidarScanUnified>))
  "Converts a ROS message object to a list"
  (cl:list 'LslidarScanUnified
    (cl:cons ':header (header msg))
    (cl:cons ':packets (packets msg))
))
