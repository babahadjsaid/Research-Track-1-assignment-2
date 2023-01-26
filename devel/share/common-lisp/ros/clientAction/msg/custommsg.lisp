; Auto-generated. Do not edit!


(cl:in-package clientAction-msg)


;//! \htmlinclude custommsg.msg.html

(cl:defclass <custommsg> (roslisp-msg-protocol:ros-message)
  ((pose
    :reader pose
    :initarg :pose
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (linear_vel
    :reader linear_vel
    :initarg :linear_vel
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (angular_vel
    :reader angular_vel
    :initarg :angular_vel
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3)))
)

(cl:defclass custommsg (<custommsg>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <custommsg>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'custommsg)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name clientAction-msg:<custommsg> is deprecated: use clientAction-msg:custommsg instead.")))

(cl:ensure-generic-function 'pose-val :lambda-list '(m))
(cl:defmethod pose-val ((m <custommsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader clientAction-msg:pose-val is deprecated.  Use clientAction-msg:pose instead.")
  (pose m))

(cl:ensure-generic-function 'linear_vel-val :lambda-list '(m))
(cl:defmethod linear_vel-val ((m <custommsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader clientAction-msg:linear_vel-val is deprecated.  Use clientAction-msg:linear_vel instead.")
  (linear_vel m))

(cl:ensure-generic-function 'angular_vel-val :lambda-list '(m))
(cl:defmethod angular_vel-val ((m <custommsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader clientAction-msg:angular_vel-val is deprecated.  Use clientAction-msg:angular_vel instead.")
  (angular_vel m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <custommsg>) ostream)
  "Serializes a message object of type '<custommsg>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pose) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'linear_vel) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'angular_vel) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <custommsg>) istream)
  "Deserializes a message object of type '<custommsg>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pose) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'linear_vel) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'angular_vel) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<custommsg>)))
  "Returns string type for a message object of type '<custommsg>"
  "clientAction/custommsg")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'custommsg)))
  "Returns string type for a message object of type 'custommsg"
  "clientAction/custommsg")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<custommsg>)))
  "Returns md5sum for a message object of type '<custommsg>"
  "00736ead694a5e07bcff16ebadc9051b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'custommsg)))
  "Returns md5sum for a message object of type 'custommsg"
  "00736ead694a5e07bcff16ebadc9051b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<custommsg>)))
  "Returns full string definition for message of type '<custommsg>"
  (cl:format cl:nil "geometry_msgs/Vector3 pose~%geometry_msgs/Vector3 linear_vel~%geometry_msgs/Vector3 angular_vel~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'custommsg)))
  "Returns full string definition for message of type 'custommsg"
  (cl:format cl:nil "geometry_msgs/Vector3 pose~%geometry_msgs/Vector3 linear_vel~%geometry_msgs/Vector3 angular_vel~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <custommsg>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pose))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'linear_vel))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'angular_vel))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <custommsg>))
  "Converts a ROS message object to a list"
  (cl:list 'custommsg
    (cl:cons ':pose (pose msg))
    (cl:cons ':linear_vel (linear_vel msg))
    (cl:cons ':angular_vel (angular_vel msg))
))
