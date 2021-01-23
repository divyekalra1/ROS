
(cl:in-package :asdf)

(defsystem "session_one-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "JangoFett" :depends-on ("_package_JangoFett"))
    (:file "_package_JangoFett" :depends-on ("_package"))
  ))