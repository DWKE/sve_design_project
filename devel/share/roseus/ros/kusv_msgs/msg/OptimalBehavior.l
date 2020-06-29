;; Auto-generated. Do not edit!


(when (boundp 'kusv_msgs::OptimalBehavior)
  (if (not (find-package "KUSV_MSGS"))
    (make-package "KUSV_MSGS"))
  (shadow 'OptimalBehavior (find-package "KUSV_MSGS")))
(unless (find-package "KUSV_MSGS::OPTIMALBEHAVIOR")
  (make-package "KUSV_MSGS::OPTIMALBEHAVIOR"))

(in-package "ROS")
;;//! \htmlinclude OptimalBehavior.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass kusv_msgs::OptimalBehavior
  :super ros::object
  :slots (_header _optimal_behavior ))

(defmethod kusv_msgs::OptimalBehavior
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:optimal_behavior __optimal_behavior) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _optimal_behavior (round __optimal_behavior))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:optimal_behavior
   (&optional __optimal_behavior)
   (if __optimal_behavior (setq _optimal_behavior __optimal_behavior)) _optimal_behavior)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; int8 _optimal_behavior
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; int8 _optimal_behavior
       (write-byte _optimal_behavior s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; int8 _optimal_behavior
     (setq _optimal_behavior (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _optimal_behavior 127) (setq _optimal_behavior (- _optimal_behavior 256)))
   ;;
   self)
  )

(setf (get kusv_msgs::OptimalBehavior :md5sum-) "28ab8069ff5ea01ae76ba32c07c3b7da")
(setf (get kusv_msgs::OptimalBehavior :datatype-) "kusv_msgs/OptimalBehavior")
(setf (get kusv_msgs::OptimalBehavior :definition-)
      "Header header

int8 optimal_behavior
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



(provide :kusv_msgs/OptimalBehavior "28ab8069ff5ea01ae76ba32c07c3b7da")


