; Auto-generated. Do not edit!


(cl:in-package kusv_msgs-msg)


;//! \htmlinclude PolyfitLaneDataArray.msg.html

(cl:defclass <PolyfitLaneDataArray> (roslisp-msg-protocol:ros-message)
  ((id
    :reader id
    :initarg :id
    :type cl:string
    :initform "")
   (frame_id
    :reader frame_id
    :initarg :frame_id
    :type cl:string
    :initform "")
   (polyfitLanes
    :reader polyfitLanes
    :initarg :polyfitLanes
    :type (cl:vector kusv_msgs-msg:PolyfitLaneData)
   :initform (cl:make-array 0 :element-type 'kusv_msgs-msg:PolyfitLaneData :initial-element (cl:make-instance 'kusv_msgs-msg:PolyfitLaneData))))
)

(cl:defclass PolyfitLaneDataArray (<PolyfitLaneDataArray>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PolyfitLaneDataArray>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PolyfitLaneDataArray)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name kusv_msgs-msg:<PolyfitLaneDataArray> is deprecated: use kusv_msgs-msg:PolyfitLaneDataArray instead.")))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <PolyfitLaneDataArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kusv_msgs-msg:id-val is deprecated.  Use kusv_msgs-msg:id instead.")
  (id m))

(cl:ensure-generic-function 'frame_id-val :lambda-list '(m))
(cl:defmethod frame_id-val ((m <PolyfitLaneDataArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kusv_msgs-msg:frame_id-val is deprecated.  Use kusv_msgs-msg:frame_id instead.")
  (frame_id m))

(cl:ensure-generic-function 'polyfitLanes-val :lambda-list '(m))
(cl:defmethod polyfitLanes-val ((m <PolyfitLaneDataArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kusv_msgs-msg:polyfitLanes-val is deprecated.  Use kusv_msgs-msg:polyfitLanes instead.")
  (polyfitLanes m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PolyfitLaneDataArray>) ostream)
  "Serializes a message object of type '<PolyfitLaneDataArray>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'id))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'frame_id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'frame_id))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'polyfitLanes))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'polyfitLanes))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PolyfitLaneDataArray>) istream)
  "Deserializes a message object of type '<PolyfitLaneDataArray>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'id) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'id) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'frame_id) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'frame_id) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'polyfitLanes) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'polyfitLanes)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'kusv_msgs-msg:PolyfitLaneData))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PolyfitLaneDataArray>)))
  "Returns string type for a message object of type '<PolyfitLaneDataArray>"
  "kusv_msgs/PolyfitLaneDataArray")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PolyfitLaneDataArray)))
  "Returns string type for a message object of type 'PolyfitLaneDataArray"
  "kusv_msgs/PolyfitLaneDataArray")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PolyfitLaneDataArray>)))
  "Returns md5sum for a message object of type '<PolyfitLaneDataArray>"
  "734f84f42af2bae65f1795f454b54519")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PolyfitLaneDataArray)))
  "Returns md5sum for a message object of type 'PolyfitLaneDataArray"
  "734f84f42af2bae65f1795f454b54519")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PolyfitLaneDataArray>)))
  "Returns full string definition for message of type '<PolyfitLaneDataArray>"
  (cl:format cl:nil "string id~%string frame_id~%PolyfitLaneData[] polyfitLanes~%~%================================================================================~%MSG: kusv_msgs/PolyfitLaneData~%string id~%string frame_id~%float64 a~%float64 b~%float64 c~%float64 d~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PolyfitLaneDataArray)))
  "Returns full string definition for message of type 'PolyfitLaneDataArray"
  (cl:format cl:nil "string id~%string frame_id~%PolyfitLaneData[] polyfitLanes~%~%================================================================================~%MSG: kusv_msgs/PolyfitLaneData~%string id~%string frame_id~%float64 a~%float64 b~%float64 c~%float64 d~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PolyfitLaneDataArray>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'id))
     4 (cl:length (cl:slot-value msg 'frame_id))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'polyfitLanes) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PolyfitLaneDataArray>))
  "Converts a ROS message object to a list"
  (cl:list 'PolyfitLaneDataArray
    (cl:cons ':id (id msg))
    (cl:cons ':frame_id (frame_id msg))
    (cl:cons ':polyfitLanes (polyfitLanes msg))
))
