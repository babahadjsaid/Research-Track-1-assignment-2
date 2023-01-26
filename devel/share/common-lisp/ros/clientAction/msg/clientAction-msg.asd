
(cl:in-package :asdf)

(defsystem "clientAction-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
)
  :components ((:file "_package")
    (:file "custommsg" :depends-on ("_package_custommsg"))
    (:file "_package_custommsg" :depends-on ("_package"))
  ))