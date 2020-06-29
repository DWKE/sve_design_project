;; Auto-generated. Do not edit!


(when (boundp 'kusv_msgs::PlanningControl)
  (if (not (find-package "KUSV_MSGS"))
    (make-package "KUSV_MSGS"))
  (shadow 'PlanningControl (find-package "KUSV_MSGS")))
(unless (find-package "KUSV_MSGS::PLANNINGCONTROL")
  (make-package "KUSV_MSGS::PLANNINGCONTROL"))

(in-package "ROS")
;;//! \htmlinclude PlanningControl.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass kusv_msgs::PlanningControl
  :super ros::object
  :slots (_header _velocity _str_angle ))

(defmethod kusv_msgs::PlanningControl
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:velocity __velocity) 0.0)
    ((:str_angle __str_angle) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _velocity (float __velocity))
   (setq _str_angle (float __str_angle))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:velocity
   (&optional __velocity)
   (if __velocity (setq _velocity __velocity)) _velocity)
  (:str_angle
   (&optional __str_angle)
   (if __str_angle (setq _str_angle __str_angle)) _str_angle)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float64 _velocity
    8
    ;; float64 _str_angle
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float64 _velocity
       (sys::poke _velocity (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _str_angle
       (sys::poke _str_angle (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float64 _velocity
     (setq _velocity (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _str_angle
     (setq _str_angle (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get kusv_msgs::PlanningControl :md5sum-) "c6eb7809a7d6c3e6a259553a266d2235")
(setf (get kusv_msgs::PlanningControl :datatype-) "kusv_msgs/PlanningControl")
(setf (get kusv_msgs::PlanningControl :definition-)
      "Header header

float64 velocity
float64 str_angle
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



(provide :kusv_msgs/PlanningControl "c6eb7809a7d6c3e6a259553a266d2235")


