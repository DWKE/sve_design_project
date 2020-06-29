;; Auto-generated. Do not edit!


(when (boundp 'kusv_msgs::PlanningLiDAR)
  (if (not (find-package "KUSV_MSGS"))
    (make-package "KUSV_MSGS"))
  (shadow 'PlanningLiDAR (find-package "KUSV_MSGS")))
(unless (find-package "KUSV_MSGS::PLANNINGLIDAR")
  (make-package "KUSV_MSGS::PLANNINGLIDAR"))

(in-package "ROS")
;;//! \htmlinclude PlanningLiDAR.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass kusv_msgs::PlanningLiDAR
  :super ros::object
  :slots (_header _isObstacle ))

(defmethod kusv_msgs::PlanningLiDAR
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:isObstacle __isObstacle) nil)
    )
   (send-super :init)
   (setq _header __header)
   (setq _isObstacle __isObstacle)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:isObstacle
   (&optional __isObstacle)
   (if __isObstacle (setq _isObstacle __isObstacle)) _isObstacle)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; bool _isObstacle
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; bool _isObstacle
       (if _isObstacle (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; bool _isObstacle
     (setq _isObstacle (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get kusv_msgs::PlanningLiDAR :md5sum-) "035b308259a72fd415e0cad1f9ec3181")
(setf (get kusv_msgs::PlanningLiDAR :datatype-) "kusv_msgs/PlanningLiDAR")
(setf (get kusv_msgs::PlanningLiDAR :definition-)
      "Header header

bool isObstacle

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



(provide :kusv_msgs/PlanningLiDAR "035b308259a72fd415e0cad1f9ec3181")


