
(cl:in-package :asdf)

(defsystem "session_one-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "CustomServiceMessage" :depends-on ("_package_CustomServiceMessage"))
    (:file "_package_CustomServiceMessage" :depends-on ("_package"))
  ))