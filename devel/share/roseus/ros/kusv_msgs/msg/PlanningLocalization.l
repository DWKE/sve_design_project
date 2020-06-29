;; Auto-generated. Do not edit!


(when (boundp 'kusv_msgs::PlanningLocalization)
  (if (not (find-package "KUSV_MSGS"))
    (make-package "KUSV_MSGS"))
  (shadow 'PlanningLocalization (find-package "KUSV_MSGS")))
(unless (find-package "KUSV_MSGS::PLANNINGLOCALIZATION")
  (make-package "KUSV_MSGS::PLANNINGLOCALIZATION"))

(in-package "ROS")
;;//! \htmlinclude PlanningLocalization.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass kusv_msgs::PlanningLocalization
  :super ros::object
  :slots (_header _lat _lon _e _n _u ))

(defmethod kusv_msgs::PlanningLocalization
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:lat __lat) 0.0)
    ((:lon __lon) 0.0)
    ((:e __e) 0.0)
    ((:n __n) 0.0)
    ((:u __u) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _lat (float __lat))
   (setq _lon (float __lon))
   (setq _e (float __e))
   (setq _n (float __n))
   (setq _u (float __u))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:lat
   (&optional __lat)
   (if __lat (setq _lat __lat)) _lat)
  (:lon
   (&optional __lon)
   (if __lon (setq _lon __lon)) _lon)
  (:e
   (&optional __e)
   (if __e (setq _e __e)) _e)
  (:n
   (&optional __n)
   (if __n (setq _n __n)) _n)
  (:u
   (&optional __u)
   (if __u (setq _u __u)) _u)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float64 _lat
    8
    ;; float64 _lon
    8
    ;; float64 _e
    8
    ;; float64 _n
    8
    ;; float64 _u
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float64 _lat
       (sys::poke _lat (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _lon
       (sys::poke _lon (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _e
       (sys::poke _e (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _n
       (sys::poke _n (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _u
       (sys::poke _u (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float64 _lat
     (setq _lat (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _lon
     (setq _lon (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _e
     (setq _e (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _n
     (setq _n (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _u
     (setq _u (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get kusv_msgs::PlanningLocalization :md5sum-) "5d9c8eb59b527fd58780bef211fc5650")
(setf (get kusv_msgs::PlanningLocalization :datatype-) "kusv_msgs/PlanningLocalization")
(setf (get kusv_msgs::PlanningLocalization :definition-)
      "Header header

float64 lat
float64 lon

float64 e
float64 n
float64 u

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



(provide :kusv_msgs/PlanningLocalization "5d9c8eb59b527fd58780bef211fc5650")


