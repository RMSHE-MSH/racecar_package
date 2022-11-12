
(cl:in-package :asdf)

(defsystem "racecar_package-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "customize_msg" :depends-on ("_package_customize_msg"))
    (:file "_package_customize_msg" :depends-on ("_package"))
  ))