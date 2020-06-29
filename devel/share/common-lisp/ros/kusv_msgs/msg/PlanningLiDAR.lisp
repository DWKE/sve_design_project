; Auto-generated. Do not edit!


(cl:in-package kusv_msgs-msg)


;//! \htmlinclude PlanningLiDAR.msg.html

(cl:defclass <PlanningLiDAR> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (isObstacle
    :reader isObstacle
    :initarg :isObstacle
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass PlanningLiDAR (<PlanningLiDAR>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PlanningLiDAR>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PlanningLiDAR)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name kusv_msgs-msg:<PlanningLiDAR> is deprecated: use kusv_msgs-msg:PlanningLiDAR instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <PlanningLiDAR>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kusv_msgs-msg:header-val is deprecated.  Use kusv_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'isObstacle-val :lambda-list '(m))
(cl:defmethod isObstacle-val ((m <PlanningLiDAR>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kusv_msgs-msg:isObstacle-val is deprecated.  Use kusv_msgs-msg:isObstacle instead.")
  (isObstacle m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PlanningLiDAR>) ostream)
  "Serializes a message object of type '<PlanningLiDAR>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'isObstacle) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PlanningLiDAR>) istream)
  "Deserializes a message object of type '<PlanningLiDAR>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:slot-value msg 'isObstacle) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PlanningLiDAR>)))
  "Returns string type for a message object of type '<PlanningLiDAR>"
  "kusv_msgs/PlanningLiDAR")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PlanningLiDAR)))
  "Returns string type for a message object of type 'PlanningLiDAR"
  "kusv_msgs/PlanningLiDAR")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PlanningLiDAR>)))
  "Returns md5sum for a message object of type '<PlanningLiDAR>"
  "035b308259a72fd415e0cad1f9ec3181")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PlanningLiDAR)))
  "Returns md5sum for a message object of type 'PlanningLiDAR"
  "035b308259a72fd415e0cad1f9ec3181")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PlanningLiDAR>)))
  "Returns full string definition for message of type '<PlanningLiDAR>"
  (cl:format cl:nil "Header header~%~%bool isObstacle~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PlanningLiDAR)))
  "Returns full string definition for message of type 'PlanningLiDAR"
  (cl:format cl:nil "Header header~%~%bool isObstacle~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PlanningLiDAR>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PlanningLiDAR>))
  "Converts a ROS message object to a list"
  (cl:list 'PlanningLiDAR
    (cl:cons ':header (header msg))
    (cl:cons ':isObstacle (isObstacle msg))
))
