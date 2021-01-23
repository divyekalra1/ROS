; Auto-generated. Do not edit!


(cl:in-package session_one-srv)


;//! \htmlinclude CustomServiceMessage-request.msg.html

(cl:defclass <CustomServiceMessage-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass CustomServiceMessage-request (<CustomServiceMessage-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CustomServiceMessage-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CustomServiceMessage-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name session_one-srv:<CustomServiceMessage-request> is deprecated: use session_one-srv:CustomServiceMessage-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CustomServiceMessage-request>) ostream)
  "Serializes a message object of type '<CustomServiceMessage-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CustomServiceMessage-request>) istream)
  "Deserializes a message object of type '<CustomServiceMessage-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CustomServiceMessage-request>)))
  "Returns string type for a service object of type '<CustomServiceMessage-request>"
  "session_one/CustomServiceMessageRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CustomServiceMessage-request)))
  "Returns string type for a service object of type 'CustomServiceMessage-request"
  "session_one/CustomServiceMessageRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CustomServiceMessage-request>)))
  "Returns md5sum for a message object of type '<CustomServiceMessage-request>"
  "614144eb549744facbf2977736dcf7b9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CustomServiceMessage-request)))
  "Returns md5sum for a message object of type 'CustomServiceMessage-request"
  "614144eb549744facbf2977736dcf7b9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CustomServiceMessage-request>)))
  "Returns full string definition for message of type '<CustomServiceMessage-request>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CustomServiceMessage-request)))
  "Returns full string definition for message of type 'CustomServiceMessage-request"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CustomServiceMessage-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CustomServiceMessage-request>))
  "Converts a ROS message object to a list"
  (cl:list 'CustomServiceMessage-request
))
;//! \htmlinclude CustomServiceMessage-response.msg.html

(cl:defclass <CustomServiceMessage-response> (roslisp-msg-protocol:ros-message)
  ((distanceIndices
    :reader distanceIndices
    :initarg :distanceIndices
    :type (cl:vector cl:integer)
   :initform (cl:make-array 0 :element-type 'cl:integer :initial-element 0)))
)

(cl:defclass CustomServiceMessage-response (<CustomServiceMessage-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CustomServiceMessage-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CustomServiceMessage-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name session_one-srv:<CustomServiceMessage-response> is deprecated: use session_one-srv:CustomServiceMessage-response instead.")))

(cl:ensure-generic-function 'distanceIndices-val :lambda-list '(m))
(cl:defmethod distanceIndices-val ((m <CustomServiceMessage-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader session_one-srv:distanceIndices-val is deprecated.  Use session_one-srv:distanceIndices instead.")
  (distanceIndices m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CustomServiceMessage-response>) ostream)
  "Serializes a message object of type '<CustomServiceMessage-response>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'distanceIndices))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let* ((signed ele) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    ))
   (cl:slot-value msg 'distanceIndices))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CustomServiceMessage-response>) istream)
  "Deserializes a message object of type '<CustomServiceMessage-response>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'distanceIndices) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'distanceIndices)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296)))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CustomServiceMessage-response>)))
  "Returns string type for a service object of type '<CustomServiceMessage-response>"
  "session_one/CustomServiceMessageResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CustomServiceMessage-response)))
  "Returns string type for a service object of type 'CustomServiceMessage-response"
  "session_one/CustomServiceMessageResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CustomServiceMessage-response>)))
  "Returns md5sum for a message object of type '<CustomServiceMessage-response>"
  "614144eb549744facbf2977736dcf7b9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CustomServiceMessage-response)))
  "Returns md5sum for a message object of type 'CustomServiceMessage-response"
  "614144eb549744facbf2977736dcf7b9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CustomServiceMessage-response>)))
  "Returns full string definition for message of type '<CustomServiceMessage-response>"
  (cl:format cl:nil "int32[] distanceIndices~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CustomServiceMessage-response)))
  "Returns full string definition for message of type 'CustomServiceMessage-response"
  (cl:format cl:nil "int32[] distanceIndices~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CustomServiceMessage-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'distanceIndices) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CustomServiceMessage-response>))
  "Converts a ROS message object to a list"
  (cl:list 'CustomServiceMessage-response
    (cl:cons ':distanceIndices (distanceIndices msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'CustomServiceMessage)))
  'CustomServiceMessage-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'CustomServiceMessage)))
  'CustomServiceMessage-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CustomServiceMessage)))
  "Returns string type for a service object of type '<CustomServiceMessage>"
  "session_one/CustomServiceMessage")