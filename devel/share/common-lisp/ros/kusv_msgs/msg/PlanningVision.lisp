; Auto-generated. Do not edit!


(cl:in-package kusv_msgs-msg)


;//! \htmlinclude PlanningVision.msg.html

(cl:defclass <PlanningVision> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (isStop
    :reader isStop
    :initarg :isStop
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass PlanningVision (<PlanningVision>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PlanningVision>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PlanningVision)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name kusv_msgs-msg:<PlanningVision> is deprecated: use kusv_msgs-msg:PlanningVision instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <PlanningVision>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kusv_msgs-msg:header-val is deprecated.  Use kusv_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'isStop-val :lambda-list '(m))
(cl:defmethod isStop-val ((m <PlanningVision>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kusv_msgs-msg:isStop-val is deprecated.  Use kusv_msgs-msg:isStop instead.")
  (isStop m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PlanningVision>) ostream)
  "Serializes a message object of type '<PlanningVision>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'isStop) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PlanningVision>) istream)
  "Deserializes a message object of type '<PlanningVision>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:slot-value msg 'isStop) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PlanningVision>)))
  "Returns string type for a message object of type '<PlanningVision>"
  "kusv_msgs/PlanningVision")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PlanningVision)))
  "Returns string type for a message object of type 'PlanningVision"
  "kusv_msgs/PlanningVision")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PlanningVision>)))
  "Returns md5sum for a message object of type '<PlanningVision>"
  "287f58928517f87bf43371625ace1927")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PlanningVision)))
  "Returns md5sum for a message object of type 'PlanningVision"
  "287f58928517f87bf43371625ace1927")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PlanningVision>)))
  "Returns full string definition for message of type '<PlanningVision>"
  (cl:format cl:nil "Header header~%~%bool isStop~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PlanningVision)))
  "Returns full string definition for message of type 'PlanningVision"
  (cl:format cl:nil "Header header~%~%bool isStop~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PlanningVision>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PlanningVision>))
  "Converts a ROS message object to a list"
  (cl:list 'PlanningVision
    (cl:cons ':header (header msg))
    (cl:cons ':isStop (isStop msg))
))
