; Auto-generated. Do not edit!


(cl:in-package kusv_msgs-msg)


;//! \htmlinclude LanePointDataArray.msg.html

(cl:defclass <LanePointDataArray> (roslisp-msg-protocol:ros-message)
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
   (lane
    :reader lane
    :initarg :lane
    :type (cl:vector kusv_msgs-msg:LanePointData)
   :initform (cl:make-array 0 :element-type 'kusv_msgs-msg:LanePointData :initial-element (cl:make-instance 'kusv_msgs-msg:LanePointData))))
)

(cl:defclass LanePointDataArray (<LanePointDataArray>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LanePointDataArray>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LanePointDataArray)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name kusv_msgs-msg:<LanePointDataArray> is deprecated: use kusv_msgs-msg:LanePointDataArray instead.")))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <LanePointDataArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kusv_msgs-msg:id-val is deprecated.  Use kusv_msgs-msg:id instead.")
  (id m))

(cl:ensure-generic-function 'frame_id-val :lambda-list '(m))
(cl:defmethod frame_id-val ((m <LanePointDataArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kusv_msgs-msg:frame_id-val is deprecated.  Use kusv_msgs-msg:frame_id instead.")
  (frame_id m))

(cl:ensure-generic-function 'lane-val :lambda-list '(m))
(cl:defmethod lane-val ((m <LanePointDataArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kusv_msgs-msg:lane-val is deprecated.  Use kusv_msgs-msg:lane instead.")
  (lane m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LanePointDataArray>) ostream)
  "Serializes a message object of type '<LanePointDataArray>"
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
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'lane))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'lane))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LanePointDataArray>) istream)
  "Deserializes a message object of type '<LanePointDataArray>"
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
  (cl:setf (cl:slot-value msg 'lane) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'lane)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'kusv_msgs-msg:LanePointData))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LanePointDataArray>)))
  "Returns string type for a message object of type '<LanePointDataArray>"
  "kusv_msgs/LanePointDataArray")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LanePointDataArray)))
  "Returns string type for a message object of type 'LanePointDataArray"
  "kusv_msgs/LanePointDataArray")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LanePointDataArray>)))
  "Returns md5sum for a message object of type '<LanePointDataArray>"
  "e5c2b5baef492fd4c9aada1ec12cd07b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LanePointDataArray)))
  "Returns md5sum for a message object of type 'LanePointDataArray"
  "e5c2b5baef492fd4c9aada1ec12cd07b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LanePointDataArray>)))
  "Returns full string definition for message of type '<LanePointDataArray>"
  (cl:format cl:nil "string id~%string frame_id~%LanePointData[] lane~%~%================================================================================~%MSG: kusv_msgs/LanePointData~%string id~%string frame_id~%geometry_msgs/Point[] point~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LanePointDataArray)))
  "Returns full string definition for message of type 'LanePointDataArray"
  (cl:format cl:nil "string id~%string frame_id~%LanePointData[] lane~%~%================================================================================~%MSG: kusv_msgs/LanePointData~%string id~%string frame_id~%geometry_msgs/Point[] point~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LanePointDataArray>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'id))
     4 (cl:length (cl:slot-value msg 'frame_id))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'lane) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LanePointDataArray>))
  "Converts a ROS message object to a list"
  (cl:list 'LanePointDataArray
    (cl:cons ':id (id msg))
    (cl:cons ':frame_id (frame_id msg))
    (cl:cons ':lane (lane msg))
))
