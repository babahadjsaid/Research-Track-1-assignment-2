;; Auto-generated. Do not edit!


(when (boundp 'client_action::my_service)
  (if (not (find-package "CLIENT_ACTION"))
    (make-package "CLIENT_ACTION"))
  (shadow 'my_service (find-package "CLIENT_ACTION")))
(unless (find-package "CLIENT_ACTION::MY_SERVICE")
  (make-package "CLIENT_ACTION::MY_SERVICE"))
(unless (find-package "CLIENT_ACTION::MY_SERVICEREQUEST")
  (make-package "CLIENT_ACTION::MY_SERVICEREQUEST"))
(unless (find-package "CLIENT_ACTION::MY_SERVICERESPONSE")
  (make-package "CLIENT_ACTION::MY_SERVICERESPONSE"))

(in-package "ROS")





(defclass client_action::my_serviceRequest
  :super ros::object
  :slots ())

(defmethod client_action::my_serviceRequest
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass client_action::my_serviceResponse
  :super ros::object
  :slots ())

(defmethod client_action::my_serviceResponse
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass client_action::my_service
  :super ros::object
  :slots ())

(setf (get client_action::my_service :md5sum-) "d41d8cd98f00b204e9800998ecf8427e")
(setf (get client_action::my_service :datatype-) "client_action/my_service")
(setf (get client_action::my_service :request) client_action::my_serviceRequest)
(setf (get client_action::my_service :response) client_action::my_serviceResponse)

(defmethod client_action::my_serviceRequest
  (:response () (instance client_action::my_serviceResponse :init)))

(setf (get client_action::my_serviceRequest :md5sum-) "d41d8cd98f00b204e9800998ecf8427e")
(setf (get client_action::my_serviceRequest :datatype-) "client_action/my_serviceRequest")
(setf (get client_action::my_serviceRequest :definition-)
      "---
")

(setf (get client_action::my_serviceResponse :md5sum-) "d41d8cd98f00b204e9800998ecf8427e")
(setf (get client_action::my_serviceResponse :datatype-) "client_action/my_serviceResponse")
(setf (get client_action::my_serviceResponse :definition-)
      "---
")



(provide :client_action/my_service "d41d8cd98f00b204e9800998ecf8427e")


