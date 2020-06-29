;; Auto-generated. Do not edit!


(when (boundp 'kusv_msgs::kusv_GlobalPose)
  (if (not (find-package "KUSV_MSGS"))
    (make-package "KUSV_MSGS"))
  (shadow 'kusv_GlobalPose (find-package "KUSV_MSGS")))
(unless (find-package "KUSV_MSGS::KUSV_GLOBALPOSE")
  (make-package "KUSV_MSGS::KUSV_GLOBALPOSE"))

(in-package "ROS")
;;//! \htmlinclude kusv_GlobalPose.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass kusv_msgs::kusv_GlobalPose
  :super ros::object
  :slots (_header _Latitude _Longitude _Heading _GPSQuality _LatStd _LonStd _HeadingStd ))

(defmethod kusv_msgs::kusv_GlobalPose
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:Latitude __Latitude) 0.0)
    ((:Longitude __Longitude) 0.0)
    ((:Heading __Heading) 0.0)
    ((:GPSQuality __GPSQuality) 0)
    ((:LatStd __LatStd) 0)
    ((:LonStd __LonStd) 0)
    ((:HeadingStd __HeadingStd) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _Latitude (float __Latitude))
   (setq _Longitude (float __Longitude))
   (setq _Heading (float __Heading))
   (setq _GPSQuality (round __GPSQuality))
   (setq _LatStd (round __LatStd))
   (setq _LonStd (round __LonStd))
   (setq _HeadingStd (round __HeadingStd))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:Latitude
   (&optional __Latitude)
   (if __Latitude (setq _Latitude __Latitude)) _Latitude)
  (:Longitude
   (&optional __Longitude)
   (if __Longitude (setq _Longitude __Longitude)) _Longitude)
  (:Heading
   (&optional __Heading)
   (if __Heading (setq _Heading __Heading)) _Heading)
  (:GPSQuality
   (&optional __GPSQuality)
   (if __GPSQuality (setq _GPSQuality __GPSQuality)) _GPSQuality)
  (:LatStd
   (&optional __LatStd)
   (if __LatStd (setq _LatStd __LatStd)) _LatStd)
  (:LonStd
   (&optional __LonStd)
   (if __LonStd (setq _LonStd __LonStd)) _LonStd)
  (:HeadingStd
   (&optional __HeadingStd)
   (if __HeadingStd (setq _HeadingStd __HeadingStd)) _HeadingStd)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float64 _Latitude
    8
    ;; float64 _Longitude
    8
    ;; float32 _Heading
    4
    ;; uint16 _GPSQuality
    2
    ;; uint16 _LatStd
    2
    ;; uint16 _LonStd
    2
    ;; uint16 _HeadingStd
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float64 _Latitude
       (sys::poke _Latitude (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _Longitude
       (sys::poke _Longitude (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float32 _Heading
       (sys::poke _Heading (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; uint16 _GPSQuality
       (write-word _GPSQuality s)
     ;; uint16 _LatStd
       (write-word _LatStd s)
     ;; uint16 _LonStd
       (write-word _LonStd s)
     ;; uint16 _HeadingStd
       (write-word _HeadingStd s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float64 _Latitude
     (setq _Latitude (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _Longitude
     (setq _Longitude (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float32 _Heading
     (setq _Heading (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; uint16 _GPSQuality
     (setq _GPSQuality (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _LatStd
     (setq _LatStd (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _LonStd
     (setq _LonStd (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _HeadingStd
     (setq _HeadingStd (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(setf (get kusv_msgs::kusv_GlobalPose :md5sum-) "57b9e4be8f27b18208f562fe0b5d18e5")
(setf (get kusv_msgs::kusv_GlobalPose :datatype-) "kusv_msgs/kusv_GlobalPose")
(setf (get kusv_msgs::kusv_GlobalPose :definition-)
      "Header header
float64 Latitude
float64 Longitude
float32 Heading
uint16 GPSQuality
uint16 LatStd
uint16 LonStd
uint16 HeadingStd

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



(provide :kusv_msgs/kusv_GlobalPose "57b9e4be8f27b18208f562fe0b5d18e5")


