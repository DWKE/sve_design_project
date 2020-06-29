; Auto-generated. Do not edit!


(cl:in-package kusv_msgs-msg)


;//! \htmlinclude VisionMark.msg.html

(cl:defclass <VisionMark> (roslisp-msg-protocol:ros-message)
  ((sign
    :reader sign
    :initarg :sign
    :type cl:boolean
    :initform cl:nil)
   (height
    :reader height
    :initarg :height
    :type cl:integer
    :initform 0)
   (width
    :reader width
    :initarg :width
    :type cl:integer
    :initform 0))
)

(cl:defclass VisionMark (<VisionMark>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <VisionMark>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'VisionMark)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name kusv_msgs-msg:<VisionMark> is deprecated: use kusv_msgs-msg:VisionMark instead.")))

(cl:ensure-generic-function 'sign-val :lambda-list '(m))
(cl:defmethod sign-val ((m <VisionMark>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kusv_msgs-msg:sign-val is deprecated.  Use kusv_msgs-msg:sign instead.")
  (sign m))

(cl:ensure-generic-function 'height-val :lambda-list '(m))
(cl:defmethod height-val ((m <VisionMark>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kusv_msgs-msg:height-val is deprecated.  Use kusv_msgs-msg:height instead.")
  (height m))

(cl:ensure-generic-function 'width-val :lambda-list '(m))
(cl:defmethod width-val ((m <VisionMark>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kusv_msgs-msg:width-val is deprecated.  Use kusv_msgs-msg:width instead.")
  (width m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <VisionMark>) ostream)
  "Serializes a message object of type '<VisionMark>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'sign) 1 0)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'height)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'width)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <VisionMark>) istream)
  "Deserializes a message object of type '<VisionMark>"
    (cl:setf (cl:slot-value msg 'sign) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'height) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'width) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<VisionMark>)))
  "Returns string type for a message object of type '<VisionMark>"
  "kusv_msgs/VisionMark")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'VisionMark)))
  "Returns string type for a message object of type 'VisionMark"
  "kusv_msgs/VisionMark")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<VisionMark>)))
  "Returns md5sum for a message object of type '<VisionMark>"
  "943270e1b6a085921a11b0ebc0a88377")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'VisionMark)))
  "Returns md5sum for a message object of type 'VisionMark"
  "943270e1b6a085921a11b0ebc0a88377")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<VisionMark>)))
  "Returns full string definition for message of type '<VisionMark>"
  (cl:format cl:nil "bool sign~%  # Driving 0~%  # Flight 1~%int64 height~%int64 width~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'VisionMark)))
  "Returns full string definition for message of type 'VisionMark"
  (cl:format cl:nil "bool sign~%  # Driving 0~%  # Flight 1~%int64 height~%int64 width~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <VisionMark>))
  (cl:+ 0
     1
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <VisionMark>))
  "Converts a ROS message object to a list"
  (cl:list 'VisionMark
    (cl:cons ':sign (sign msg))
    (cl:cons ':height (height msg))
    (cl:cons ':width (width msg))
))
