;; Auto-generated. Do not edit!


(when (boundp 'client_action::custommsg)
  (if (not (find-package "CLIENT_ACTION"))
    (make-package "CLIENT_ACTION"))
  (shadow 'custommsg (find-package "CLIENT_ACTION")))
(unless (find-package "CLIENT_ACTION::CUSTOMMSG")
  (make-package "CLIENT_ACTION::CUSTOMMSG"))

(in-package "ROS")
;;//! \htmlinclude custommsg.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass client_action::custommsg
  :super ros::object
  :slots (_pose _linear_vel _angular_vel ))

(defmethod client_action::custommsg
  (:init
   (&key
    ((:pose __pose) (instance geometry_msgs::Point :init))
    ((:linear_vel __linear_vel) (instance geometry_msgs::Vector3 :init))
    ((:angular_vel __angular_vel) (instance geometry_msgs::Vector3 :init))
    )
   (send-super :init)
   (setq _pose __pose)
   (setq _linear_vel __linear_vel)
   (setq _angular_vel __angular_vel)
   self)
  (:pose
   (&rest __pose)
   (if (keywordp (car __pose))
       (send* _pose __pose)
     (progn
       (if __pose (setq _pose (car __pose)))
       _pose)))
  (:linear_vel
   (&rest __linear_vel)
   (if (keywordp (car __linear_vel))
       (send* _linear_vel __linear_vel)
     (progn
       (if __linear_vel (setq _linear_vel (car __linear_vel)))
       _linear_vel)))
  (:angular_vel
   (&rest __angular_vel)
   (if (keywordp (car __angular_vel))
       (send* _angular_vel __angular_vel)
     (progn
       (if __angular_vel (setq _angular_vel (car __angular_vel)))
       _angular_vel)))
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Point _pose
    (send _pose :serialization-length)
    ;; geometry_msgs/Vector3 _linear_vel
    (send _linear_vel :serialization-length)
    ;; geometry_msgs/Vector3 _angular_vel
    (send _angular_vel :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Point _pose
       (send _pose :serialize s)
     ;; geometry_msgs/Vector3 _linear_vel
       (send _linear_vel :serialize s)
     ;; geometry_msgs/Vector3 _angular_vel
       (send _angular_vel :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Point _pose
     (send _pose :deserialize buf ptr-) (incf ptr- (send _pose :serialization-length))
   ;; geometry_msgs/Vector3 _linear_vel
     (send _linear_vel :deserialize buf ptr-) (incf ptr- (send _linear_vel :serialization-length))
   ;; geometry_msgs/Vector3 _angular_vel
     (send _angular_vel :deserialize buf ptr-) (incf ptr- (send _angular_vel :serialization-length))
   ;;
   self)
  )

(setf (get client_action::custommsg :md5sum-) "00736ead694a5e07bcff16ebadc9051b")
(setf (get client_action::custommsg :datatype-) "client_action/custommsg")
(setf (get client_action::custommsg :definition-)
      "geometry_msgs/Point pose
geometry_msgs/Vector3 linear_vel
geometry_msgs/Vector3 angular_vel

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
float64 z
")



(provide :client_action/custommsg "00736ead694a5e07bcff16ebadc9051b")


