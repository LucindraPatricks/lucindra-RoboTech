
(cl:in-package :asdf)

(defsystem "mouse_reader-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "mousemove" :depends-on ("_package_mousemove"))
    (:file "_package_mousemove" :depends-on ("_package"))
  ))