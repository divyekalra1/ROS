; Auto-generated. Do not edit!


(cl:in-package custom_service_assignment-srv)


;//! \htmlinclude ServiceMessageCustom-request.msg.html

(cl:defclass <ServiceMessageCustom-request> (roslisp-msg-protocol:ros-message)
  ((distance
    :reader distance
    :initarg :distance
    :type cl:float
    :initform 0.0))
)

(cl:defclass ServiceMessageCustom-request (<ServiceMessageCustom-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ServiceMessageCustom-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ServiceMessageCustom-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name custom_service_assignment-srv:<ServiceMessageCustom-request> is deprecated: use custom_service_assignment-srv:ServiceMessageCustom-request instead.")))

(cl:ensure-generic-function 'distance-val :lambda-list '(m))
(cl:defmethod distance-val ((m <ServiceMessageCustom-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_service_assignment-srv:distance-val is deprecated.  Use custom_service_assignment-srv:distance instead.")
  (distance m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ServiceMessageCustom-request>) ostream)
  "Serializes a message object of type '<ServiceMessageCustom-request>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'distance))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ServiceMessageCustom-request>) istream)
  "Deserializes a message object of type '<ServiceMessageCustom-request>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'distance) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ServiceMessageCustom-request>)))
  "Returns string type for a service object of type '<ServiceMessageCustom-request>"
  "custom_service_assignment/ServiceMessageCustomRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ServiceMessageCustom-request)))
  "Returns string type for a service object of type 'ServiceMessageCustom-request"
  "custom_service_assignment/ServiceMessageCustomRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ServiceMessageCustom-request>)))
  "Returns md5sum for a message object of type '<ServiceMessageCustom-request>"
  "c2eabfe6ce564bbb0d6ec06a2b02df2d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ServiceMessageCustom-request)))
  "Returns md5sum for a message object of type 'ServiceMessageCustom-request"
  "c2eabfe6ce564bbb0d6ec06a2b02df2d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ServiceMessageCustom-request>)))
  "Returns full string definition for message of type '<ServiceMessageCustom-request>"
  (cl:format cl:nil "float32 distance~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ServiceMessageCustom-request)))
  "Returns full string definition for message of type 'ServiceMessageCustom-request"
  (cl:format cl:nil "float32 distance~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ServiceMessageCustom-request>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ServiceMessageCustom-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ServiceMessageCustom-request
    (cl:cons ':distance (distance msg))
))
;//! \htmlinclude ServiceMessageCustom-response.msg.html

(cl:defclass <ServiceMessageCustom-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil)
   (info
    :reader info
    :initarg :info
    :type (cl:vector cl:integer)
   :initform (cl:make-array 0 :element-type 'cl:integer :initial-element 0)))
)

(cl:defclass ServiceMessageCustom-response (<ServiceMessageCustom-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ServiceMessageCustom-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ServiceMessageCustom-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name custom_service_assignment-srv:<ServiceMessageCustom-response> is deprecated: use custom_service_assignment-srv:ServiceMessageCustom-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <ServiceMessageCustom-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_service_assignment-srv:success-val is deprecated.  Use custom_service_assignment-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'info-val :lambda-list '(m))
(cl:defmethod info-val ((m <ServiceMessageCustom-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_service_assignment-srv:info-val is deprecated.  Use custom_service_assignment-srv:info instead.")
  (info m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ServiceMessageCustom-response>) ostream)
  "Serializes a message object of type '<ServiceMessageCustom-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'info))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream))
   (cl:slot-value msg 'info))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ServiceMessageCustom-response>) istream)
  "Deserializes a message object of type '<ServiceMessageCustom-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'info) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'info)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ServiceMessageCustom-response>)))
  "Returns string type for a service object of type '<ServiceMessageCustom-response>"
  "custom_service_assignment/ServiceMessageCustomResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ServiceMessageCustom-response)))
  "Returns string type for a service object of type 'ServiceMessageCustom-response"
  "custom_service_assignment/ServiceMessageCustomResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ServiceMessageCustom-response>)))
  "Returns md5sum for a message object of type '<ServiceMessageCustom-response>"
  "c2eabfe6ce564bbb0d6ec06a2b02df2d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ServiceMessageCustom-response)))
  "Returns md5sum for a message object of type 'ServiceMessageCustom-response"
  "c2eabfe6ce564bbb0d6ec06a2b02df2d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ServiceMessageCustom-response>)))
  "Returns full string definition for message of type '<ServiceMessageCustom-response>"
  (cl:format cl:nil "bool success~%char[] info~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ServiceMessageCustom-response)))
  "Returns full string definition for message of type 'ServiceMessageCustom-response"
  (cl:format cl:nil "bool success~%char[] info~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ServiceMessageCustom-response>))
  (cl:+ 0
     1
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'info) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ServiceMessageCustom-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ServiceMessageCustom-response
    (cl:cons ':success (success msg))
    (cl:cons ':info (info msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ServiceMessageCustom)))
  'ServiceMessageCustom-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ServiceMessageCustom)))
  'ServiceMessageCustom-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ServiceMessageCustom)))
  "Returns string type for a service object of type '<ServiceMessageCustom>"
  "custom_service_assignment/ServiceMessageCustom")