; Auto-generated. Do not edit!


(cl:in-package kusv_msgs-msg)


;//! \htmlinclude OptimalBehavior.msg.html

(cl:defclass <OptimalBehavior> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (optimal_behavior
    :reader optimal_behavior
    :initarg :optimal_behavior
    :type cl:fixnum
    :initform 0))
)

(cl:defclass OptimalBehavior (<OptimalBehavior>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <OptimalBehavior>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'OptimalBehavior)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name kusv_msgs-msg:<OptimalBehavior> is deprecated: use kusv_msgs-msg:OptimalBehavior instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <OptimalBehavior>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kusv_msgs-msg:header-val is deprecated.  Use kusv_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'optimal_behavior-val :lambda-list '(m))
(cl:defmethod optimal_behavior-val ((m <OptimalBehavior>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kusv_msgs-msg:optimal_behavior-val is deprecated.  Use kusv_msgs-msg:optimal_behavior instead.")
  (optimal_behavior m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <OptimalBehavior>) ostream)
  "Serializes a message object of type '<OptimalBehavior>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let* ((signed (cl:slot-value msg 'optimal_behavior)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <OptimalBehavior>) istream)
  "Deserializes a message object of type '<OptimalBehavior>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'optimal_behavior) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<OptimalBehavior>)))
  "Returns string type for a message object of type '<OptimalBehavior>"
  "kusv_msgs/OptimalBehavior")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'OptimalBehavior)))
  "Returns string type for a message object of type 'OptimalBehavior"
  "kusv_msgs/OptimalBehavior")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<OptimalBehavior>)))
  "Returns md5sum for a message object of type '<OptimalBehavior>"
  "28ab8069ff5ea01ae76ba32c07c3b7da")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'OptimalBehavior)))
  "Returns md5sum for a message object of type 'OptimalBehavior"
  "28ab8069ff5ea01ae76ba32c07c3b7da")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<OptimalBehavior>)))
  "Returns full string definition for message of type '<OptimalBehavior>"
  (cl:format cl:nil "Header header~%~%int8 optimal_behavior~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'OptimalBehavior)))
  "Returns full string definition for message of type 'OptimalBehavior"
  (cl:format cl:nil "Header header~%~%int8 optimal_behavior~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <OptimalBehavior>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <OptimalBehavior>))
  "Converts a ROS message object to a list"
  (cl:list 'OptimalBehavior
    (cl:cons ':header (header msg))
    (cl:cons ':optimal_behavior (optimal_behavior msg))
))
