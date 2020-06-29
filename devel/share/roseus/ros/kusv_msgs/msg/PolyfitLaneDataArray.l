;; Auto-generated. Do not edit!


(when (boundp 'kusv_msgs::PolyfitLaneDataArray)
  (if (not (find-package "KUSV_MSGS"))
    (make-package "KUSV_MSGS"))
  (shadow 'PolyfitLaneDataArray (find-package "KUSV_MSGS")))
(unless (find-package "KUSV_MSGS::POLYFITLANEDATAARRAY")
  (make-package "KUSV_MSGS::POLYFITLANEDATAARRAY"))

(in-package "ROS")
;;//! \htmlinclude PolyfitLaneDataArray.msg.html


(defclass kusv_msgs::PolyfitLaneDataArray
  :super ros::object
  :slots (_id _frame_id _polyfitLanes ))

(defmethod kusv_msgs::PolyfitLaneDataArray
  (:init
   (&key
    ((:id __id) "")
    ((:frame_id __frame_id) "")
    ((:polyfitLanes __polyfitLanes) (let (r) (dotimes (i 0) (push (instance kusv_msgs::PolyfitLaneData :init) r)) r))
    )
   (send-super :init)
   (setq _id (string __id))
   (setq _frame_id (string __frame_id))
   (setq _polyfitLanes __polyfitLanes)
   self)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:frame_id
   (&optional __frame_id)
   (if __frame_id (setq _frame_id __frame_id)) _frame_id)
  (:polyfitLanes
   (&rest __polyfitLanes)
   (if (keywordp (car __polyfitLanes))
       (send* _polyfitLanes __polyfitLanes)
     (progn
       (if __polyfitLanes (setq _polyfitLanes (car __polyfitLanes)))
       _polyfitLanes)))
  (:serialization-length
   ()
   (+
    ;; string _id
    4 (length _id)
    ;; string _frame_id
    4 (length _frame_id)
    ;; kusv_msgs/PolyfitLaneData[] _polyfitLanes
    (apply #'+ (send-all _polyfitLanes :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _id
       (write-long (length _id) s) (princ _id s)
     ;; string _frame_id
       (write-long (length _frame_id) s) (princ _frame_id s)
     ;; kusv_msgs/PolyfitLaneData[] _polyfitLanes
     (write-long (length _polyfitLanes) s)
     (dolist (elem _polyfitLanes)
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
   ;; kusv_msgs/PolyfitLaneData[] _polyfitLanes
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _polyfitLanes (let (r) (dotimes (i n) (push (instance kusv_msgs::PolyfitLaneData :init) r)) r))
     (dolist (elem- _polyfitLanes)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get kusv_msgs::PolyfitLaneDataArray :md5sum-) "734f84f42af2bae65f1795f454b54519")
(setf (get kusv_msgs::PolyfitLaneDataArray :datatype-) "kusv_msgs/PolyfitLaneDataArray")
(setf (get kusv_msgs::PolyfitLaneDataArray :definition-)
      "string id
string frame_id
PolyfitLaneData[] polyfitLanes

================================================================================
MSG: kusv_msgs/PolyfitLaneData
string id
string frame_id
float64 a
float64 b
float64 c
float64 d

")



(provide :kusv_msgs/PolyfitLaneDataArray "734f84f42af2bae65f1795f454b54519")


