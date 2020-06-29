
(cl:in-package :asdf)

(defsystem "sve_design_control-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "driving_control_msg" :depends-on ("_package_driving_control_msg"))
    (:file "_package_driving_control_msg" :depends-on ("_package"))
  ))