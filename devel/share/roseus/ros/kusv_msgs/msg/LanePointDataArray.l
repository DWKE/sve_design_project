;; Auto-generated. Do not edit!


(when (boundp 'kusv_msgs::LanePointDataArray)
  (if (not (find-package "KUSV_MSGS"))
    (make-package "KUSV_MSGS"))
  (shadow 'LanePointDataArray (find-package "KUSV_MSGS")))
(unless (find-package "KUSV_MSGS::LANEPOINTDATAARRAY")
  (make-package "KUSV_MSGS::LANEPOINTDATAARRAY"))

(in-package "ROS")
;;//! \htmlinclude LanePointDataArray.msg.html


(defclass kusv_msgs::LanePointDataArray
  :super ros::object
  :slots (_id _frame_id _lane ))

(defmethod kusv_msgs::LanePointDataArray
  (:init
   (&key
    ((:id __id) "")
    ((:frame_id __frame_id) "")
    ((:lane __lane) (let (r) (dotimes (i 0) (push (instance kusv_msgs::LanePointData :init) r)) r))
    )
   (send-super :init)
   (setq _id (string __id))
   (setq _frame_id (string __frame_id))
   (setq _lane __lane)
   self)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:frame_id
   (&optional __frame_id)
   (if __frame_id (setq _frame_id __frame_id)) _frame_id)
  (:lane
   (&rest __lane)
   (if (keywordp (car __lane))
       (send* _lane __lane)
     (progn
       (if __lane (setq _lane (car __lane)))
       _lane)))
  (:serialization-length
   ()
   (+
    ;; string _id
    4 (length _id)
    ;; string _frame_id
    4 (length _frame_id)
    ;; kusv_msgs/LanePointData[] _lane
    (apply #'+ (send-all _lane :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _id
       (write-long (length _id) s) (princ _id s)
     ;; string _frame_id
       (write-long (length _frame_id) s) (princ _frame_id s)
     ;; kusv_msgs/LanePointData[] _lane
     (write-long (length _lane) s)
     (dolist (elem _lane)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _frame_id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _frame_id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; kusv_msgs/LanePointData[] _lane
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _lane (let (r) (dotimes (i n) (push (instance kusv_msgs::LanePointData :init) r)) r))
     (dolist (elem- _lane)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get kusv_msgs::LanePointDataArray :md5sum-) "e5c2b5baef492fd4c9aada1ec12cd07b")
(setf (get kusv_msgs::LanePointDataArray :datatype-) "kusv_msgs/LanePointDataArray")
(setf (get kusv_msgs::LanePointDataArray :definition-)
      "string id
string frame_id
LanePointData[] lane

================================================================================
MSG: kusv_msgs/LanePointData
string id
string frame_id
geometry_msgs/Point[] point

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

")



(provide :kusv_msgs/LanePointDataArray "e5c2b5baef492fd4c9aada1ec12cd07b")


