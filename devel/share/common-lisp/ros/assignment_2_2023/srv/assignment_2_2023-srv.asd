
(cl:in-package :asdf)

(defsystem "assignment_2_2023-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "Avrg" :depends-on ("_package_Avrg"))
    (:file "_package_Avrg" :depends-on ("_package"))
    (:file "Csrv" :depends-on ("_package_Csrv"))
    (:file "_package_Csrv" :depends-on ("_package"))
  ))