; Auto-generated. Do not edit!


(cl:in-package client_action-srv)


;//! \htmlinclude my_service-request.msg.html

(cl:defclass <my_service-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass my_service-request (<my_service-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <my_service-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'my_service-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name client_action-srv:<my_service-request> is deprecated: use client_action-srv:my_service-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <my_service-request>) ostream)
  "Serializes a message object of type '<my_service-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <my_service-request>) istream)
  "Deserializes a message object of type '<my_service-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<my_service-request>)))
  "Returns string type for a service object of type '<my_service-request>"
  "client_action/my_serviceRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'my_service-request)))
  "Returns string type for a service object of type 'my_service-request"
  "client_action/my_serviceRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<my_service-request>)))
  "Returns md5sum for a message object of type '<my_service-request>"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'my_service-request)))
  "Returns md5sum for a message object of type 'my_service-request"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<my_service-request>)))
  "Returns full string definition for message of type '<my_service-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'my_service-request)))
  "Returns full string definition for message of type 'my_service-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <my_service-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <my_service-request>))
  "Converts a ROS message object to a list"
  (cl:list 'my_service-request
))
;//! \htmlinclude my_service-response.msg.html

(cl:defclass <my_service-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass my_service-response (<my_service-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <my_service-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'my_service-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name client_action-srv:<my_service-response> is deprecated: use client_action-srv:my_service-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <my_service-response>) ostream)
  "Serializes a message object of type '<my_service-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <my_service-response>) istream)
  "Deserializes a message object of type '<my_service-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<my_service-response>)))
  "Returns string type for a service object of type '<my_service-response>"
  "client_action/my_serviceResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'my_service-response)))
  "Returns string type for a service object of type 'my_service-response"
  "client_action/my_serviceResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<my_service-response>)))
  "Returns md5sum for a message object of type '<my_service-response>"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'my_service-response)))
  "Returns md5sum for a message object of type 'my_service-response"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<my_service-response>)))
  "Returns full string definition for message of type '<my_service-response>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'my_service-response)))
  "Returns full string definition for message of type 'my_service-response"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <my_service-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <my_service-response>))
  "Converts a ROS message object to a list"
  (cl:list 'my_service-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'my_service)))
  'my_service-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'my_service)))
  'my_service-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'my_service)))
  "Returns string type for a service object of type '<my_service>"
  "client_action/my_service")