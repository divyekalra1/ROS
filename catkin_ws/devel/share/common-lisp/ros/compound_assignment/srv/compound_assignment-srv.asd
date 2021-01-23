
(cl:in-package :asdf)

(defsystem "compound_assignment-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "CustomServiceMessage" :depends-on ("_package_CustomServiceMessage"))
    (:file "_package_CustomServiceMessage" :depends-on ("_package"))
  ))