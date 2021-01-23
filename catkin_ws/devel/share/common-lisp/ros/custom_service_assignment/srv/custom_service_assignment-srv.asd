
(cl:in-package :asdf)

(defsystem "custom_service_assignment-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "ServiceMessageCustom" :depends-on ("_package_ServiceMessageCustom"))
    (:file "_package_ServiceMessageCustom" :depends-on ("_package"))
  ))