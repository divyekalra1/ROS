;; Auto-generated. Do not edit!


(when (boundp 'session_one::JangoFett)
  (if (not (find-package "SESSION_ONE"))
    (make-package "SESSION_ONE"))
  (shadow 'JangoFett (find-package "SESSION_ONE")))
(unless (find-package "SESSION_ONE::JANGOFETT")
  (make-package "SESSION_ONE::JANGOFETT"))

(in-package "ROS")
;;//! \htmlinclude JangoFett.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass session_one::JangoFett
  :super ros::object
  :slots (_shape _side ))

(defmethod session_one::JangoFett
  (:init
   (&key
    ((:shape __shape) (instance std_msgs::String :init))
    ((:side __side) (instance std_msgs::Int32 :init))
    )
   (send-super :init)
   (setq _shape __shape)
   (setq _side __side)
   self)
  (:shape
   (&rest __shape)
   (if (keywordp (car __shape))
       (send* _shape __shape)
     (progn
       (if __shape (setq _shape (car __shape)))
       _shape)))
  (:side
   (&rest __side)
   (if (keywordp (car __side))
       (send* _side __side)
     (progn
       (if __side (setq _side (car __side)))
       _side)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/String _shape
    (send _shape :serialization-length)
    ;; std_msgs/Int32 _side
    (send _side :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/String _shape
       (send _shape :serialize s)
     ;; std_msgs/Int32 _side
       (send _side :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/String _shape
     (send _shape :deserialize buf ptr-) (incf ptr- (send _shape :serialization-length))
   ;; std_msgs/Int32 _side
     (send _side :deserialize buf ptr-) (incf ptr- (send _side :serialization-length))
   ;;
   self)
  )

(setf (get session_one::JangoFett :md5sum-) "e886955a85915c1c08925340140db219")
(setf (get session_one::JangoFett :datatype-) "session_one/JangoFett")
(setf (get session_one::JangoFett :definition-)
      "std_msgs/String shape
std_msgs/Int32 side

================================================================================
MSG: std_msgs/String
string data

================================================================================
MSG: std_msgs/Int32
int32 data
")



(provide :session_one/JangoFett "e886955a85915c1c08925340140db219")


