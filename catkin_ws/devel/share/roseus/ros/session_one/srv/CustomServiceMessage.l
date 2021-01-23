;; Auto-generated. Do not edit!


(when (boundp 'session_one::CustomServiceMessage)
  (if (not (find-package "SESSION_ONE"))
    (make-package "SESSION_ONE"))
  (shadow 'CustomServiceMessage (find-package "SESSION_ONE")))
(unless (find-package "SESSION_ONE::CUSTOMSERVICEMESSAGE")
  (make-package "SESSION_ONE::CUSTOMSERVICEMESSAGE"))
(unless (find-package "SESSION_ONE::CUSTOMSERVICEMESSAGEREQUEST")
  (make-package "SESSION_ONE::CUSTOMSERVICEMESSAGEREQUEST"))
(unless (find-package "SESSION_ONE::CUSTOMSERVICEMESSAGERESPONSE")
  (make-package "SESSION_ONE::CUSTOMSERVICEMESSAGERESPONSE"))

(in-package "ROS")





(defclass session_one::CustomServiceMessageRequest
  :super ros::object
  :slots ())

(defmethod session_one::CustomServiceMessageRequest
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

(defclass session_one::CustomServiceMessageResponse
  :super ros::object
  :slots (_distanceIndices ))

(defmethod session_one::CustomServiceMessageResponse
  (:init
   (&key
    ((:distanceIndices __distanceIndices) (make-array 0 :initial-element 0 :element-type :integer))
    )
   (send-super :init)
   (setq _distanceIndices __distanceIndices)
   self)
  (:distanceIndices
   (&optional __distanceIndices)
   (if __distanceIndices (setq _distanceIndices __distanceIndices)) _distanceIndices)
  (:serialization-length
   ()
   (+
    ;; int32[] _distanceIndices
    (* 4    (length _distanceIndices)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32[] _distanceIndices
     (write-long (length _distanceIndices) s)
     (dotimes (i (length _distanceIndices))
       (write-long (elt _distanceIndices i) s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32[] _distanceIndices
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _distanceIndices (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _distanceIndices i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(defclass session_one::CustomServiceMessage
  :super ros::object
  :slots ())

(setf (get session_one::CustomServiceMessage :md5sum-) "614144eb549744facbf2977736dcf7b9")
(setf (get session_one::CustomServiceMessage :datatype-) "session_one/CustomServiceMessage")
(setf (get session_one::CustomServiceMessage :request) session_one::CustomServiceMessageRequest)
(setf (get session_one::CustomServiceMessage :response) session_one::CustomServiceMessageResponse)

(defmethod session_one::CustomServiceMessageRequest
  (:response () (instance session_one::CustomServiceMessageResponse :init)))

(setf (get session_one::CustomServiceMessageRequest :md5sum-) "614144eb549744facbf2977736dcf7b9")
(setf (get session_one::CustomServiceMessageRequest :datatype-) "session_one/CustomServiceMessageRequest")
(setf (get session_one::CustomServiceMessageRequest :definition-)
      "
---
int32[] distanceIndices

")

(setf (get session_one::CustomServiceMessageResponse :md5sum-) "614144eb549744facbf2977736dcf7b9")
(setf (get session_one::CustomServiceMessageResponse :datatype-) "session_one/CustomServiceMessageResponse")
(setf (get session_one::CustomServiceMessageResponse :definition-)
      "
---
int32[] distanceIndices

")



(provide :session_one/CustomServiceMessage "614144eb549744facbf2977736dcf7b9")


