;; Auto-generated. Do not edit!


(when (boundp 'kusv_msgs::VisionMark)
  (if (not (find-package "KUSV_MSGS"))
    (make-package "KUSV_MSGS"))
  (shadow 'VisionMark (find-package "KUSV_MSGS")))
(unless (find-package "KUSV_MSGS::VISIONMARK")
  (make-package "KUSV_MSGS::VISIONMARK"))

(in-package "ROS")
;;//! \htmlinclude VisionMark.msg.html


(defclass kusv_msgs::VisionMark
  :super ros::object
  :slots (_sign _height _width ))

(defmethod kusv_msgs::VisionMark
  (:init
   (&key
    ((:sign __sign) nil)
    ((:height __height) 0)
    ((:width __width) 0)
    )
   (send-super :init)
   (setq _sign __sign)
   (setq _height (round __height))
   (setq _width (round __width))
   self)
  (:sign
   (&optional __sign)
   (if __sign (setq _sign __sign)) _sign)
  (:height
   (&optional __height)
   (if __height (setq _height __height)) _height)
  (:width
   (&optional __width)
   (if __width (setq _width __width)) _width)
  (:serialization-length
   ()
   (+
    ;; bool _sign
    1
    ;; int64 _height
    8
    ;; int64 _width
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _sign
       (if _sign (write-byte -1 s) (write-byte 0 s))
     ;; int64 _height
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _height (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _height) (= (length (_height . bv)) 2)) ;; bignum
              (write-long (ash (elt (_height . bv) 0) 0) s)
              (write-long (ash (elt (_height . bv) 1) -1) s))
             ((and (class _height) (= (length (_height . bv)) 1)) ;; big1
              (write-long (elt (_height . bv) 0) s)
              (write-long (if (>= _height 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _height s)(write-long (if (>= _height 0) 0 #xffffffff) s)))
     ;; int64 _width
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _width (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _width) (= (length (_width . bv)) 2)) ;; bignum
              (write-long (ash (elt (_width . bv) 0) 0) s)
              (write-long (ash (elt (_width . bv) 1) -1) s))
             ((and (class _width) (= (length (_width . bv)) 1)) ;; big1
              (write-long (elt (_width . bv) 0) s)
              (write-long (if (>= _width 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _width s)(write-long (if (>= _width 0) 0 #xffffffff) s)))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _sign
     (setq _sign (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; int64 _height
#+(or :alpha :irix6 :x86_64)
      (setf _height (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _height (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; int64 _width
#+(or :alpha :irix6 :x86_64)
      (setf _width (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _width (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;;
   self)
  )

(setf (get kusv_msgs::VisionMark :md5sum-) "943270e1b6a085921a11b0ebc0a88377")
(setf (get kusv_msgs::VisionMark :datatype-) "kusv_msgs/VisionMark")
(setf (get kusv_msgs::VisionMark :definition-)
      "bool sign
  # Driving 0
  # Flight 1
int64 height
int64 width

")



(provide :kusv_msgs/VisionMark "943270e1b6a085921a11b0ebc0a88377")


