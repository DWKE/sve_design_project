;; Auto-generated. Do not edit!


(when (boundp 'kusv_msgs::PlanningVision)
  (if (not (find-package "KUSV_MSGS"))
    (make-package "KUSV_MSGS"))
  (shadow 'PlanningVision (find-package "KUSV_MSGS")))
(unless (find-package "KUSV_MSGS::PLANNINGVISION")
  (make-package "KUSV_MSGS::PLANNINGVISION"))

(in-package "ROS")
;;//! \htmlinclude PlanningVision.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass kusv_msgs::PlanningVision
  :super ros::object
  :slots (_header _isStop ))

(defmethod kusv_msgs::PlanningVision
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:isStop __isStop) nil)
    )
   (send-super :init)
   (setq _header __header)
   (setq _isStop __isStop)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:isStop
   (&optional __isStop)
   (if __isStop (setq _isStop __isStop)) _isStop)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; bool _isStop
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; bool _isStop
       (if _isStop (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; bool _isStop
     (setq _isStop (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get kusv_msgs::PlanningVision :md5sum-) "287f58928517f87bf43371625ace1927")
(setf (get kusv_msgs::PlanningVision :datatype-) "kusv_msgs/PlanningVision")
(setf (get kusv_msgs::PlanningVision :definition-)
      "Header header

bool isStop
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



(provide :kusv_msgs/PlanningVision "287f58928517f87bf43371625ace1927")


