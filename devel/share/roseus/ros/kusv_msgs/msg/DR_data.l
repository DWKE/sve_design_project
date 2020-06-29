;; Auto-generated. Do not edit!


(when (boundp 'kusv_msgs::DR_data)
  (if (not (find-package "KUSV_MSGS"))
    (make-package "KUSV_MSGS"))
  (shadow 'DR_data (find-package "KUSV_MSGS")))
(unless (find-package "KUSV_MSGS::DR_DATA")
  (make-package "KUSV_MSGS::DR_DATA"))

(in-package "ROS")
;;//! \htmlinclude DR_data.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass kusv_msgs::DR_data
  :super ros::object
  :slots (_header _speed_avr_rear _yaw_rate ))

(defmethod kusv_msgs::DR_data
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:speed_avr_rear __speed_avr_rear) 0.0)
    ((:yaw_rate __yaw_rate) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _speed_avr_rear (float __speed_avr_rear))
   (setq _yaw_rate (float __yaw_rate))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:speed_avr_rear
   (&optional __speed_avr_rear)
   (if __speed_avr_rear (setq _speed_avr_rear __speed_avr_rear)) _speed_avr_rear)
  (:yaw_rate
   (&optional __yaw_rate)
   (if __yaw_rate (setq _yaw_rate __yaw_rate)) _yaw_rate)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float64 _speed_avr_rear
    8
    ;; float64 _yaw_rate
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float64 _speed_avr_rear
       (sys::poke _speed_avr_rear (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _yaw_rate
       (sys::poke _yaw_rate (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float64 _speed_avr_rear
     (setq _speed_avr_rear (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _yaw_rate
     (setq _yaw_rate (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get kusv_msgs::DR_data :md5sum-) "b6281181b3ed8c7096c3f94a04025c97")
(setf (get kusv_msgs::DR_data :datatype-) "kusv_msgs/DR_data")
(setf (get kusv_msgs::DR_data :definition-)
      "Header header
float64 speed_avr_rear
float64 yaw_rate

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

")



(provide :kusv_msgs/DR_data "b6281181b3ed8c7096c3f94a04025c97")


