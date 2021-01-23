; Auto-generated. Do not edit!


(cl:in-package compound_assignment-srv)


;//! \htmlinclude CustomServiceMessage-request.msg.html

(cl:defclass <CustomServiceMessage-request> (roslisp-msg-protocol:ros-message)
  ((shape
    :reader shape
    :initarg :shape
    :type std_msgs-msg:String
    :initform (cl:make-instance 'std_msgs-msg:String))
   (side
    :reader side
    :initarg :side
    :type std_msgs-msg:Int32
    :initform (cl:make-instance 'std_msgs-msg:Int32)))
)

(cl:defclass CustomServiceMessage-request (<CustomServiceMessage-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CustomServiceMessage-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CustomServiceMessage-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name compound_assignment-srv:<CustomServiceMessage-request> is deprecated: use compound_assignment-srv:CustomServiceMessage-request instead.")))

(cl:ensure-generic-function 'shape-val :lambda-list '(m))
(cl:defmethod shape-val ((m <CustomServiceMessage-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader compound_assignment-srv:shape-val is deprecated.  Use compound_assignment-srv:shape instead.")
  (shape m))

(cl:ensure-generic-function 'side-val :lambda-list '(m))
(cl:defmethod side-val ((m <CustomServiceMessage-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader compound_assignment-srv:side-val is deprecated.  Use compound_assignment-srv:side instead.")
  (side m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CustomServiceMessage-request>) ostream)
  "Serializes a message object of type '<CustomServiceMessage-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'shape) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'side) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CustomServiceMessage-request>) istream)
  "Deserializes a message object of type '<CustomServiceMessage-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'shape) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'side) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CustomServiceMessage-request>)))
  "Returns string type for a service object of type '<CustomServiceMessage-request>"
  "compound_assignment/CustomServiceMessageRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CustomServiceMessage-request)))
  "Returns string type for a service object of type 'CustomServiceMessage-request"
  "compound_assignment/CustomServiceMessageRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CustomServiceMessage-request>)))
  "Returns md5sum for a message object of type '<CustomServiceMessage-request>"
  "e886955a85915c1c08925340140db219")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CustomServiceMessage-request)))
  "Returns md5sum for a message object of type 'CustomServiceMessage-request"
  "e886955a85915c1c08925340140db219")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CustomServiceMessage-request>)))
  "Returns full string definition for message of type '<CustomServiceMessage-request>"
  (cl:format cl:nil "std_msgs/String shape~%std_msgs/Int32 side~%~%================================================================================~%MSG: std_msgs/String~%string data~%~%================================================================================~%MSG: std_msgs/Int32~%int32 data~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CustomServiceMessage-request)))
  "Returns full string definition for message of type 'CustomServiceMessage-request"
  (cl:format cl:nil "std_msgs/String shape~%std_msgs/Int32 side~%~%================================================================================~%MSG: std_msgs/String~%string data~%~%================================================================================~%MSG: std_msgs/Int32~%int32 data~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CustomServiceMessage-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'shape))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'side))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CustomServiceMessage-request>))
  "Converts a ROS message object to a list"
  (cl:list 'CustomServiceMessage-request
    (cl:cons ':shape (shape msg))
    (cl:cons ':side (side msg))
))
;//! \htmlinclude CustomServiceMessage-response.msg.html

(cl:defclass <CustomServiceMessage-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass CustomServiceMessage-response (<CustomServiceMessage-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CustomServiceMessage-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CustomServiceMessage-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name compound_assignment-srv:<CustomServiceMessage-response> is deprecated: use compound_assignment-srv:CustomServiceMessage-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CustomServiceMessage-response>) ostream)
  "Serializes a message object of type '<CustomServiceMessage-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CustomServiceMessage-response>) istream)
  "Deserializes a message object of type '<CustomServiceMessage-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CustomServiceMessage-response>)))
  "Returns string type for a service object of type '<CustomServiceMessage-response>"
  "compound_assignment/CustomServiceMessageResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CustomServiceMessage-response)))
  "Returns string type for a service object of type 'CustomServiceMessage-response"
  "compound_assignment/CustomServiceMessageResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CustomServiceMessage-response>)))
  "Returns md5sum for a message object of type '<CustomServiceMessage-response>"
  "e886955a85915c1c08925340140db219")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CustomServiceMessage-response)))
  "Returns md5sum for a message object of type 'CustomServiceMessage-response"
  "e886955a85915c1c08925340140db219")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CustomServiceMessage-response>)))
  "Returns full string definition for message of type '<CustomServiceMessage-response>"
  (cl:format cl:nil "~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CustomServiceMessage-response)))
  "Returns full string definition for message of type 'CustomServiceMessage-response"
  (cl:format cl:nil "~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CustomServiceMessage-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CustomServiceMessage-response>))
  "Converts a ROS message object to a list"
  (cl:list 'CustomServiceMessage-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'CustomServiceMessage)))
  'CustomServiceMessage-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'CustomServiceMessage)))
  'CustomServiceMessage-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CustomServiceMessage)))
  "Returns string type for a service object of type '<CustomServiceMessage>"
  "compound_assignment/CustomServiceMessage")