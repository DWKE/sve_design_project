;; Auto-generated. Do not edit!


(when (boundp 'sve_design_control::driving_control_msg)
  (if (not (find-package "SVE_DESIGN_CONTROL"))
    (make-package "SVE_DESIGN_CONTROL"))
  (shadow 'driving_control_msg (find-package "SVE_DESIGN_CONTROL")))
(unless (find-package "SVE_DESIGN_CONTROL::DRIVING_CONTROL_MSG")
  (make-package "SVE_DESIGN_CONTROL::DRIVING_CONTROL_MSG"))

(in-package "ROS")
;;//! \htmlinclude driving_control_msg.msg.html


(defclass sve_design_control::driving_control_msg
  :super ros::object
  :slots (_velocity _steering_angle ))

(defmethod sve_design_control::driving_control_msg
  (:init
   (&key
    ((:velocity __velocity) 0.0)
    ((:steering_angle __steering_angle) 0.0)
    )
   (send-super :init)
   (setq _velocity (float __velocity))
   (setq _steering_angle (float __steering_angle))
   self)
  (:velocity
   (&optional __velocity)
   (if __velocity (setq _velocity __velocity)) _velocity)
  (:steering_angle
   (&optional __steering_angle)
   (if __steering_angle (setq _steering_angle __steering_angle)) _steering_angle)
  (:serialization-length
   ()
   (+
    ;; float32 _velocity
    4
    ;; float32 _steering_angle
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _velocity
       (sys::poke _velocity (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _steering_angle
       (sys::poke _steering_angle (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _velocity
     (setq _velocity (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _steering_angle
     (setq _steering_angle (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get sve_design_control::driving_control_msg :md5sum-) "eb8ec87b60030ed9d49e286c9809454c")
(setf (get sve_design_control::driving_control_msg :datatype-) "sve_design_control/driving_control_msg")
(setf (get sve_design_control::driving_control_msg :definition-)
      "float32 velocity
float32 steering_angle
")



(provide :sve_design_control/driving_control_msg "eb8ec87b60030ed9d49e286c9809454c")


