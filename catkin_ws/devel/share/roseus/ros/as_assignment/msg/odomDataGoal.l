;; Auto-generated. Do not edit!


(when (boundp 'as_assignment::odomDataGoal)
  (if (not (find-package "AS_ASSIGNMENT"))
    (make-package "AS_ASSIGNMENT"))
  (shadow 'odomDataGoal (find-package "AS_ASSIGNMENT")))
(unless (find-package "AS_ASSIGNMENT::ODOMDATAGOAL")
  (make-package "AS_ASSIGNMENT::ODOMDATAGOAL"))

(in-package "ROS")
;;//! \htmlinclude odomDataGoal.msg.html


(defclass as_assignment::odomDataGoal
  :super ros::object
  :slots (_seconds ))

(defmethod as_assignment::odomDataGoal
  (:init
   (&key
    ((:seconds __seconds) 0)
    )
   (send-super :init)
   (setq _seconds (round __seconds))
   self)
  (:seconds
   (&optional __seconds)
   (if __seconds (setq _seconds __seconds)) _seconds)
  (:serialization-length
   ()
   (+
    ;; int32 _seconds
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _seconds
       (write-long _seconds s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _seconds
     (setq _seconds (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get as_assignment::odomDataGoal :md5sum-) "7185940bcec4e3e995419aeb77a0ca23")
(setf (get as_assignment::odomDataGoal :datatype-) "as_assignment/odomDataGoal")
(setf (get as_assignment::odomDataGoal :definition-)
      "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
#Goal
int32 seconds

")



(provide :as_assignment/odomDataGoal "7185940bcec4e3e995419aeb77a0ca23")


