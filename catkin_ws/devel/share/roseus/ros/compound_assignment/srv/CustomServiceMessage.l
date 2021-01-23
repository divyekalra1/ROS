;; Auto-generated. Do not edit!


(when (boundp 'compound_assignment::CustomServiceMessage)
  (if (not (find-package "COMPOUND_ASSIGNMENT"))
    (make-package "COMPOUND_ASSIGNMENT"))
  (shadow 'CustomServiceMessage (find-package "COMPOUND_ASSIGNMENT")))
(unless (find-package "COMPOUND_ASSIGNMENT::CUSTOMSERVICEMESSAGE")
  (make-package "COMPOUND_ASSIGNMENT::CUSTOMSERVICEMESSAGE"))
(unless (find-package "COMPOUND_ASSIGNMENT::CUSTOMSERVICEMESSAGEREQUEST")
  (make-package "COMPOUND_ASSIGNMENT::CUSTOMSERVICEMESSAGEREQUEST"))
(unless (find-package "COMPOUND_ASSIGNMENT::CUSTOMSERVICEMESSAGERESPONSE")
  (make-package "COMPOUND_ASSIGNMENT::CUSTOMSERVICEMESSAGERESPONSE"))

(in-package "ROS")

(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))




(defclass compound_assignment::CustomServiceMessageRequest
  :super ros::object
  :slots (_shape _side ))

(defmethod compound_assignment::CustomServiceMessageRequest
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

(defclass compound_assignment::CustomServiceMessageResponse
  :super ros::object
  :slots ())

(defmethod compound_assignment::CustomServiceMessageResponse
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

(defclass compound_assignment::CustomServiceMessage
  :super ros::object
  :slots ())

(setf (get compound_assignment::CustomServiceMessage :md5sum-) "e886955a85915c1c08925340140db219")
(setf (get compound_assignment::CustomServiceMessage :datatype-) "compound_assignment/CustomServiceMessage")
(setf (get compound_assignment::CustomServiceMessage :request) compound_assignment::CustomServiceMessageRequest)
(setf (get compound_assignment::CustomServiceMessage :response) compound_assignment::CustomServiceMessageResponse)

(defmethod compound_assignment::CustomServiceMessageRequest
  (:response () (instance compound_assignment::CustomServiceMessageResponse :init)))

(setf (get compound_assignment::CustomServiceMessageRequest :md5sum-) "e886955a85915c1c08925340140db219")
(setf (get compound_assignment::CustomServiceMessageRequest :datatype-) "compound_assignment/CustomServiceMessageRequest")
(setf (get compound_assignment::CustomServiceMessageRequest :definition-)
      "std_msgs/String shape
std_msgs/Int32 side

================================================================================
MSG: std_msgs/String
string data

================================================================================
MSG: std_msgs/Int32
---


")

(setf (get compound_assignment::CustomServiceMessageResponse :md5sum-) "e886955a85915c1c08925340140db219")
(setf (get compound_assignment::CustomServiceMessageResponse :datatype-) "compound_assignment/CustomServiceMessageResponse")
(setf (get compound_assignment::CustomServiceMessageResponse :definition-)
      "std_msgs/String shape
std_msgs/Int32 side

================================================================================
MSG: std_msgs/String
string data

================================================================================
MSG: std_msgs/Int32
---


")



(provide :compound_assignment/CustomServiceMessage "e886955a85915c1c08925340140db219")


