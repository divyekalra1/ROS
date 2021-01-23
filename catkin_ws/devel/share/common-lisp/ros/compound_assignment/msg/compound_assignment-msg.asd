
(cl:in-package :asdf)

(defsystem "compound_assignment-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :actionlib_msgs-msg
               :nav_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "odomDataAction" :depends-on ("_package_odomDataAction"))
    (:file "_package_odomDataAction" :depends-on ("_package"))
    (:file "odomDataActionFeedback" :depends-on ("_package_odomDataActionFeedback"))
    (:file "_package_odomDataActionFeedback" :depends-on ("_package"))
    (:file "odomDataActionGoal" :depends-on ("_package_odomDataActionGoal"))
    (:file "_package_odomDataActionGoal" :depends-on ("_package"))
    (:file "odomDataActionResult" :depends-on ("_package_odomDataActionResult"))
    (:file "_package_odomDataActionResult" :depends-on ("_package"))
    (:file "odomDataFeedback" :depends-on ("_package_odomDataFeedback"))
    (:file "_package_odomDataFeedback" :depends-on ("_package"))
    (:file "odomDataGoal" :depends-on ("_package_odomDataGoal"))
    (:file "_package_odomDataGoal" :depends-on ("_package"))
    (:file "odomDataResult" :depends-on ("_package_odomDataResult"))
    (:file "_package_odomDataResult" :depends-on ("_package"))
  ))