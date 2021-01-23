;; Auto-generated. Do not edit!


(when (boundp 'custom_service_assignment::ServiceMessageCustom)
  (if (not (find-package "CUSTOM_SERVICE_ASSIGNMENT"))
    (make-package "CUSTOM_SERVICE_ASSIGNMENT"))
  (shadow 'ServiceMessageCustom (find-package "CUSTOM_SERVICE_ASSIGNMENT")))
(unless (find-package "CUSTOM_SERVICE_ASSIGNMENT::SERVICEMESSAGECUSTOM")
  (make-package "CUSTOM_SERVICE_ASSIGNMENT::SERVICEMESSAGECUSTOM"))
(unless (find-package "CUSTOM_SERVICE_ASSIGNMENT::SERVICEMESSAGECUSTOMREQUEST")
  (make-package "CUSTOM_SERVICE_ASSIGNMENT::SERVICEMESSAGECUSTOMREQUEST"))
(unless (find-package "CUSTOM_SERVICE_ASSIGNMENT::SERVICEMESSAGECUSTOMRESPONSE")
  (make-package "CUSTOM_SERVICE_ASSIGNMENT::SERVICEMESSAGECUSTOMRESPONSE"))

(in-package "ROS")





(defclass custom_service_assignment::ServiceMessageCustomRequest
  :super ros::object
  :slots (_distance ))

(defmethod custom_service_assignment::ServiceMessageCustomRequest
  (:init
   (&key
    ((:distance __distance) 0.0)
    )
   (send-super :init)
   (setq _distance (float __distance))
   self)
  (:distance
   (&optional __distance)
   (if __distance (setq _distance __distance)) _distance)
  (:serialization-length
   ()
   (+
    ;; float32 _distance
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _distance
       (sys::poke _distance (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _distance
     (setq _distance (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass custom_service_assignment::ServiceMessageCustomResponse
  :super ros::object
  :slots (_success _info ))

(defmethod custom_service_assignment::ServiceMessageCustomResponse
  (:init
   (&key
    ((:success __success) nil)
    ((:info __info) (make-array 0 :initial-element 0 :element-type :integer))
    )
   (send-super :init)
   (setq _success __success)
   (setq _info __info)
   self)
  (:success
   (&optional __success)
   (if __success (setq _success __success)) _success)
  (:info
   (&optional __info)
   (if __info (setq _info __info)) _info)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ;; char[] _info
    (* 1    (length _info)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;; char[] _info
     (write-long (length _info) s)
     (dotimes (i (length _info))
       (write-byte (elt _info i) s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; char[] _info
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _info (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _info i) (sys::peek buf ptr- :char)) (incf ptr- 1)
     ))
   ;;
   self)
  )

(defclass custom_service_assignment::ServiceMessageCustom
  :super ros::object
  :slots ())

(setf (get custom_service_assignment::ServiceMessageCustom :md5sum-) "c2eabfe6ce564bbb0d6ec06a2b02df2d")
(setf (get custom_service_assignment::ServiceMessageCustom :datatype-) "custom_service_assignment/ServiceMessageCustom")
(setf (get custom_service_assignment::ServiceMessageCustom :request) custom_service_assignment::ServiceMessageCustomRequest)
(setf (get custom_service_assignment::ServiceMessageCustom :response) custom_service_assignment::ServiceMessageCustomResponse)

(defmethod custom_service_assignment::ServiceMessageCustomRequest
  (:response () (instance custom_service_assignment::ServiceMessageCustomResponse :init)))

(setf (get custom_service_assignment::ServiceMessageCustomRequest :md5sum-) "c2eabfe6ce564bbb0d6ec06a2b02df2d")
(setf (get custom_service_assignment::ServiceMessageCustomRequest :datatype-) "custom_service_assignment/ServiceMessageCustomRequest")
(setf (get custom_service_assignment::ServiceMessageCustomRequest :definition-)
      "float32 distance
---
bool success
char[] info
")

(setf (get custom_service_assignment::ServiceMessageCustomResponse :md5sum-) "c2eabfe6ce564bbb0d6ec06a2b02df2d")
(setf (get custom_service_assignment::ServiceMessageCustomResponse :datatype-) "custom_service_assignment/ServiceMessageCustomResponse")
(setf (get custom_service_assignment::ServiceMessageCustomResponse :definition-)
      "float32 distance
---
bool success
char[] info
")



(provide :custom_service_assignment/ServiceMessageCustom "c2eabfe6ce564bbb0d6ec06a2b02df2d")


