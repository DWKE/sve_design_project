; Auto-generated. Do not edit!


(cl:in-package sve_design_control-msg)


;//! \htmlinclude driving_control_msg.msg.html

(cl:defclass <driving_control_msg> (roslisp-msg-protocol:ros-message)
  ((velocity
    :reader velocity
    :initarg :velocity
    :type cl:float
    :initform 0.0)
   (steering_angle
    :reader steering_angle
    :initarg :steering_angle
    :type cl:float
    :initform 0.0))
)

(cl:defclass driving_control_msg (<driving_control_msg>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <driving_control_msg>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'driving_control_msg)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name sve_design_control-msg:<driving_control_msg> is deprecated: use sve_design_control-msg:driving_control_msg instead.")))

(cl:ensure-generic-function 'velocity-val :lambda-list '(m))
(cl:defmethod velocity-val ((m <driving_control_msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sve_design_control-msg:velocity-val is deprecated.  Use sve_design_control-msg:velocity instead.")
  (velocity m))

(cl:ensure-generic-function 'steering_angle-val :lambda-list '(m))
(cl:defmethod steering_angle-val ((m <driving_control_msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sve_design_control-msg:steering_angle-val is deprecated.  Use sve_design_control-msg:steering_angle instead.")
  (steering_angle m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <driving_control_msg>) ostream)
  "Serializes a message object of type '<driving_control_msg>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'velocity))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'steering_angle))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <driving_control_msg>) istream)
  "Deserializes a message object of type '<driving_control_msg>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'velocity) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'steering_angle) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<driving_control_msg>)))
  "Returns string type for a message object of type '<driving_control_msg>"
  "sve_design_control/driving_control_msg")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'driving_control_msg)))
  "Returns string type for a message object of type 'driving_control_msg"
  "sve_design_control/driving_control_msg")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<driving_control_msg>)))
  "Returns md5sum for a message object of type '<driving_control_msg>"
  "eb8ec87b60030ed9d49e286c9809454c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'driving_control_msg)))
  "Returns md5sum for a message object of type 'driving_control_msg"
  "eb8ec87b60030ed9d49e286c9809454c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<driving_control_msg>)))
  "Returns full string definition for message of type '<driving_control_msg>"
  (cl:format cl:nil "float32 velocity~%float32 steering_angle~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'driving_control_msg)))
  "Returns full string definition for message of type 'driving_control_msg"
  (cl:format cl:nil "float32 velocity~%float32 steering_angle~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <driving_control_msg>))
  (cl:+ 0
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <driving_control_msg>))
  "Converts a ROS message object to a list"
  (cl:list 'driving_control_msg
    (cl:cons ':velocity (velocity msg))
    (cl:cons ':steering_angle (steering_angle msg))
))
