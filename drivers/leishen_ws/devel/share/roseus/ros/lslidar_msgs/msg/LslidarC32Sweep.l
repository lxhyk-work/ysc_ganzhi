;; Auto-generated. Do not edit!


(when (boundp 'lslidar_msgs::LslidarC32Sweep)
  (if (not (find-package "LSLIDAR_MSGS"))
    (make-package "LSLIDAR_MSGS"))
  (shadow 'LslidarC32Sweep (find-package "LSLIDAR_MSGS")))
(unless (find-package "LSLIDAR_MSGS::LSLIDARC32SWEEP")
  (make-package "LSLIDAR_MSGS::LSLIDARC32SWEEP"))

(in-package "ROS")
;;//! \htmlinclude LslidarC32Sweep.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass lslidar_msgs::LslidarC32Sweep
  :super ros::object
  :slots (_header _scans ))

(defmethod lslidar_msgs::LslidarC32Sweep
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:scans __scans) (let (r) (dotimes (i 32) (push (instance lslidar_msgs::LslidarScan :init) r)) r))
    )
   (send-super :init)
   (setq _header __header)
   (setq _scans __scans)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:scans
   (&rest __scans)
   (if (keywordp (car __scans))
       (send* _scans __scans)
     (progn
       (if __scans (setq _scans (car __scans)))
       _scans)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; lslidar_msgs/LslidarScan[32] _scans
    (apply #'+ (send-all _scans :serialization-length))
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; lslidar_msgs/LslidarScan[32] _scans
     (dolist (elem _scans)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; lslidar_msgs/LslidarScan[32] _scans
   (dotimes (i 32)
     (send (elt _scans i) :deserialize buf ptr-) (incf ptr- (send (elt _scans i) :serialization-length))
     )
   ;;
   self)
  )

(setf (get lslidar_msgs::LslidarC32Sweep :md5sum-) "80a015e824c3342168ab462a26096e1b")
(setf (get lslidar_msgs::LslidarC32Sweep :datatype-) "lslidar_msgs/LslidarC32Sweep")
(setf (get lslidar_msgs::LslidarC32Sweep :definition-)
      "Header header

# The 0th scan is at the bottom
LslidarScan[32] scans



================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: lslidar_msgs/LslidarScan
# Altitude of all the points within this scan
float64 altitude

# The valid points in this scan sorted by azimuth
# from 0 to 359.99
LslidarPoint[] points

================================================================================
MSG: lslidar_msgs/LslidarPoint
# Time when the point is captured
float64 time

# Converted distance in the sensor frame
float64 x
float64 y
float64 z

# Raw measurement from Leishen C16
float64 azimuth
float64 distance
float64 intensity
uint16 ring


")



(provide :lslidar_msgs/LslidarC32Sweep "80a015e824c3342168ab462a26096e1b")


