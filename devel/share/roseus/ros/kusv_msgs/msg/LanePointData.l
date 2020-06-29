;; Auto-generated. Do not edit!


(when (boundp 'kusv_msgs::LanePointData)
  (if (not (find-package "KUSV_MSGS"))
    (make-package "KUSV_MSGS"))
  (shadow 'LanePointData (find-package "KUSV_MSGS")))
(unless (find-package "KUSV_MSGS::LANEPOINTDATA")
  (make-package "KUSV_MSGS::LANEPOINTDATA"))

(in-package "ROS")
;;//! \htmlinclude LanePointData.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass kusv_msgs::LanePointData
  :super ros::object
  :slots (_id _frame_id _point ))

(defmethod kusv_msgs::LanePointData
  (:init
   (&key
    ((:id __id) "")
    ((:frame_id __frame_id) "")
    ((:point __point) (let (r) (dotimes (i 0) (push (instance geometry_msgs::Point :init) r)) r))
    )
   (send-super :init)
   (setq _id (string __id))
   (setq _frame_id (string __frame_id))
   (setq _point __point)
   self)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:frame_id
   (&optional __frame_id)
   (if __frame_id (setq _frame_id __frame_id)) _frame_id)
  (:point
   (&rest __point)
   (if (keywordp (car __point))
       (send* _point __point)
     (progn
       (if __point (setq _point (car __point)))
       _point)))
  (:serialization-length
   ()
   (+
    ;; string _id
    4 (length _id)
    ;; string _frame_id
    4 (length _frame_id)
    ;; geometry_msgs/Point[] _point
    (apply #'+ (send-all _point :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _id
       (write-long (length _id) s) (princ _id s)
     ;; string _frame_id
       (write-long (length _frame_id) s) (princ _frame_id s)
     ;; geometry_msgs/Point[] _point
     (write-long (length _point) s)
     (dolist (elem _point)
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
   ;; geometry_msgs/Point[] _point
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _point (let (r) (dotimes (i n) (push (instance geometry_msgs::Point :init) r)) r))
     (dolist (elem- _point)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get kusv_msgs::LanePointData :md5sum-) "4c44ef979d32be62ab2486f7d7cc7f22")
(setf (get kusv_msgs::LanePointData :datatype-) "kusv_msgs/LanePointData")
(setf (get kusv_msgs::LanePointData :definition-)
      "string id
string frame_id
geometry_msgs/Point[] point

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

")



(provide :kusv_msgs/LanePointData "4c44ef979d32be62ab2486f7d7cc7f22")


