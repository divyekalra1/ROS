; Auto-generated. Do not edit!


(cl:in-package as_assignment-msg)


;//! \htmlinclude odomDataGoal.msg.html

(cl:defclass <odomDataGoal> (roslisp-msg-protocol:ros-message)
  ((seconds
    :reader seconds
    :initarg :seconds
    :type cl:integer
    :initform 0))
)

(cl:defclass odomDataGoal (<odomDataGoal>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <odomDataGoal>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'odomDataGoal)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name as_assignment-msg:<odomDataGoal> is deprecated: use as_assignment-msg:odomDataGoal instead.")))

(cl:ensure-generic-function 'seconds-val :lambda-list '(m))
(cl:defmethod seconds-val ((m <odomDataGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader as_assignment-msg:seconds-val is deprecated.  Use as_assignment-msg:seconds instead.")
  (seconds m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <odomDataGoal>) ostream)
  "Serializes a message object of type '<odomDataGoal>"
  (cl:let* ((signed (cl:slot-value msg 'seconds)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <odomDataGoal>) istream)
  "Deserializes a message object of type '<odomDataGoal>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'seconds) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<odomDataGoal>)))
  "Returns string type for a message object of type '<odomDataGoal>"
  "as_assignment/odomDataGoal")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'odomDataGoal)))
  "Returns string type for a message object of type 'odomDataGoal"
  "as_assignment/odomDataGoal")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<odomDataGoal>)))
  "Returns md5sum for a message object of type '<odomDataGoal>"
  "7185940bcec4e3e995419aeb77a0ca23")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'odomDataGoal)))
  "Returns md5sum for a message object of type 'odomDataGoal"
  "7185940bcec4e3e995419aeb77a0ca23")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<odomDataGoal>)))
  "Returns full string definition for message of type '<odomDataGoal>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#Goal~%int32 seconds~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'odomDataGoal)))
  "Returns full string definition for message of type 'odomDataGoal"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#Goal~%int32 seconds~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <odomDataGoal>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <odomDataGoal>))
  "Converts a ROS message object to a list"
  (cl:list 'odomDataGoal
    (cl:cons ':seconds (seconds msg))
))