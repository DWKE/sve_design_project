; Auto-generated. Do not edit!


(cl:in-package kusv_msgs-msg)


;//! \htmlinclude kusv_GlobalPose.msg.html

(cl:defclass <kusv_GlobalPose> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (Latitude
    :reader Latitude
    :initarg :Latitude
    :type cl:float
    :initform 0.0)
   (Longitude
    :reader Longitude
    :initarg :Longitude
    :type cl:float
    :initform 0.0)
   (Heading
    :reader Heading
    :initarg :Heading
    :type cl:float
    :initform 0.0)
   (GPSQuality
    :reader GPSQuality
    :initarg :GPSQuality
    :type cl:fixnum
    :initform 0)
   (LatStd
    :reader LatStd
    :initarg :LatStd
    :type cl:fixnum
    :initform 0)
   (LonStd
    :reader LonStd
    :initarg :LonStd
    :type cl:fixnum
    :initform 0)
   (HeadingStd
    :reader HeadingStd
    :initarg :HeadingStd
    :type cl:fixnum
    :initform 0))
)

(cl:defclass kusv_GlobalPose (<kusv_GlobalPose>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <kusv_GlobalPose>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'kusv_GlobalPose)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name kusv_msgs-msg:<kusv_GlobalPose> is deprecated: use kusv_msgs-msg:kusv_GlobalPose instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <kusv_GlobalPose>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kusv_msgs-msg:header-val is deprecated.  Use kusv_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'Latitude-val :lambda-list '(m))
(cl:defmethod Latitude-val ((m <kusv_GlobalPose>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kusv_msgs-msg:Latitude-val is deprecated.  Use kusv_msgs-msg:Latitude instead.")
  (Latitude m))

(cl:ensure-generic-function 'Longitude-val :lambda-list '(m))
(cl:defmethod Longitude-val ((m <kusv_GlobalPose>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kusv_msgs-msg:Longitude-val is deprecated.  Use kusv_msgs-msg:Longitude instead.")
  (Longitude m))

(cl:ensure-generic-function 'Heading-val :lambda-list '(m))
(cl:defmethod Heading-val ((m <kusv_GlobalPose>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kusv_msgs-msg:Heading-val is deprecated.  Use kusv_msgs-msg:Heading instead.")
  (Heading m))

(cl:ensure-generic-function 'GPSQuality-val :lambda-list '(m))
(cl:defmethod GPSQuality-val ((m <kusv_GlobalPose>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kusv_msgs-msg:GPSQuality-val is deprecated.  Use kusv_msgs-msg:GPSQuality instead.")
  (GPSQuality m))

(cl:ensure-generic-function 'LatStd-val :lambda-list '(m))
(cl:defmethod LatStd-val ((m <kusv_GlobalPose>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kusv_msgs-msg:LatStd-val is deprecated.  Use kusv_msgs-msg:LatStd instead.")
  (LatStd m))

(cl:ensure-generic-function 'LonStd-val :lambda-list '(m))
(cl:defmethod LonStd-val ((m <kusv_GlobalPose>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kusv_msgs-msg:LonStd-val is deprecated.  Use kusv_msgs-msg:LonStd instead.")
  (LonStd m))

(cl:ensure-generic-function 'HeadingStd-val :lambda-list '(m))
(cl:defmethod HeadingStd-val ((m <kusv_GlobalPose>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kusv_msgs-msg:HeadingStd-val is deprecated.  Use kusv_msgs-msg:HeadingStd instead.")
  (HeadingStd m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <kusv_GlobalPose>) ostream)
  "Serializes a message object of type '<kusv_GlobalPose>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'Latitude))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'Longitude))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'Heading))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'GPSQuality)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'GPSQuality)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'LatStd)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'LatStd)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'LonStd)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'LonStd)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'HeadingStd)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'HeadingStd)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <kusv_GlobalPose>) istream)
  "Deserializes a message object of type '<kusv_GlobalPose>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'Latitude) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'Longitude) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'Heading) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'GPSQuality)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'GPSQuality)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'LatStd)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'LatStd)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'LonStd)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'LonStd)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'HeadingStd)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'HeadingStd)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<kusv_GlobalPose>)))
  "Returns string type for a message object of type '<kusv_GlobalPose>"
  "kusv_msgs/kusv_GlobalPose")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'kusv_GlobalPose)))
  "Returns string type for a message object of type 'kusv_GlobalPose"
  "kusv_msgs/kusv_GlobalPose")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<kusv_GlobalPose>)))
  "Returns md5sum for a message object of type '<kusv_GlobalPose>"
  "57b9e4be8f27b18208f562fe0b5d18e5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'kusv_GlobalPose)))
  "Returns md5sum for a message object of type 'kusv_GlobalPose"
  "57b9e4be8f27b18208f562fe0b5d18e5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<kusv_GlobalPose>)))
  "Returns full string definition for message of type '<kusv_GlobalPose>"
  (cl:format cl:nil "Header header~%float64 Latitude~%float64 Longitude~%float32 Heading~%uint16 GPSQuality~%uint16 LatStd~%uint16 LonStd~%uint16 HeadingStd~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'kusv_GlobalPose)))
  "Returns full string definition for message of type 'kusv_GlobalPose"
  (cl:format cl:nil "Header header~%float64 Latitude~%float64 Longitude~%float32 Heading~%uint16 GPSQuality~%uint16 LatStd~%uint16 LonStd~%uint16 HeadingStd~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <kusv_GlobalPose>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     8
     8
     4
     2
     2
     2
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <kusv_GlobalPose>))
  "Converts a ROS message object to a list"
  (cl:list 'kusv_GlobalPose
    (cl:cons ':header (header msg))
    (cl:cons ':Latitude (Latitude msg))
    (cl:cons ':Longitude (Longitude msg))
    (cl:cons ':Heading (Heading msg))
    (cl:cons ':GPSQuality (GPSQuality msg))
    (cl:cons ':LatStd (LatStd msg))
    (cl:cons ':LonStd (LonStd msg))
    (cl:cons ':HeadingStd (HeadingStd msg))
))
