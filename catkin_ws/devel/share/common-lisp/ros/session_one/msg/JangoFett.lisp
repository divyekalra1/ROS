; Auto-generated. Do not edit!


(cl:in-package session_one-msg)


;//! \htmlinclude JangoFett.msg.html

(cl:defclass <JangoFett> (roslisp-msg-protocol:ros-message)
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

(cl:defclass JangoFett (<JangoFett>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <JangoFett>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'JangoFett)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name session_one-msg:<JangoFett> is deprecated: use session_one-msg:JangoFett instead.")))

(cl:ensure-generic-function 'shape-val :lambda-list '(m))
(cl:defmethod shape-val ((m <JangoFett>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader session_one-msg:shape-val is deprecated.  Use session_one-msg:shape instead.")
  (shape m))

(cl:ensure-generic-function 'side-val :lambda-list '(m))
(cl:defmethod side-val ((m <JangoFett>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader session_one-msg:side-val is deprecated.  Use session_one-msg:side instead.")
  (side m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <JangoFett>) ostream)
  "Serializes a message object of type '<JangoFett>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'shape) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'side) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <JangoFett>) istream)
  "Deserializes a message object of type '<JangoFett>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'shape) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'side) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<JangoFett>)))
  "Returns string type for a message object of type '<JangoFett>"
  "session_one/JangoFett")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'JangoFett)))
  "Returns string type for a message object of type 'JangoFett"
  "session_one/JangoFett")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<JangoFett>)))
  "Returns md5sum for a message object of type '<JangoFett>"
  "e886955a85915c1c08925340140db219")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'JangoFett)))
  "Returns md5sum for a message object of type 'JangoFett"
  "e886955a85915c1c08925340140db219")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<JangoFett>)))
  "Returns full string definition for message of type '<JangoFett>"
  (cl:format cl:nil "std_msgs/String shape~%std_msgs/Int32 side~%~%================================================================================~%MSG: std_msgs/String~%string data~%~%================================================================================~%MSG: std_msgs/Int32~%int32 data~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'JangoFett)))
  "Returns full string definition for message of type 'JangoFett"
  (cl:format cl:nil "std_msgs/String shape~%std_msgs/Int32 side~%~%================================================================================~%MSG: std_msgs/String~%string data~%~%================================================================================~%MSG: std_msgs/Int32~%int32 data~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <JangoFett>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'shape))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'side))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <JangoFett>))
  "Converts a ROS message object to a list"
  (cl:list 'JangoFett
    (cl:cons ':shape (shape msg))
    (cl:cons ':side (side msg))
))
