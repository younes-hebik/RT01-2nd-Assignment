;; Auto-generated. Do not edit!


(when (boundp 'assignment_2_2023::Csrv)
  (if (not (find-package "ASSIGNMENT_2_2023"))
    (make-package "ASSIGNMENT_2_2023"))
  (shadow 'Csrv (find-package "ASSIGNMENT_2_2023")))
(unless (find-package "ASSIGNMENT_2_2023::CSRV")
  (make-package "ASSIGNMENT_2_2023::CSRV"))
(unless (find-package "ASSIGNMENT_2_2023::CSRVREQUEST")
  (make-package "ASSIGNMENT_2_2023::CSRVREQUEST"))
(unless (find-package "ASSIGNMENT_2_2023::CSRVRESPONSE")
  (make-package "ASSIGNMENT_2_2023::CSRVRESPONSE"))

(in-package "ROS")





(defclass assignment_2_2023::CsrvRequest
  :super ros::object
  :slots ())

(defmethod assignment_2_2023::CsrvRequest
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

(defclass assignment_2_2023::CsrvResponse
  :super ros::object
  :slots (_goal_x _goal_y ))

(defmethod assignment_2_2023::CsrvResponse
  (:init
   (&key
    ((:goal_x __goal_x) 0.0)
    ((:goal_y __goal_y) 0.0)
    )
   (send-super :init)
   (setq _goal_x (float __goal_x))
   (setq _goal_y (float __goal_y))
   self)
  (:goal_x
   (&optional __goal_x)
   (if __goal_x (setq _goal_x __goal_x)) _goal_x)
  (:goal_y
   (&optional __goal_y)
   (if __goal_y (setq _goal_y __goal_y)) _goal_y)
  (:serialization-length
   ()
   (+
    ;; float32 _goal_x
    4
    ;; float32 _goal_y
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _goal_x
       (sys::poke _goal_x (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _goal_y
       (sys::poke _goal_y (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _goal_x
     (setq _goal_x (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _goal_y
     (setq _goal_y (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass assignment_2_2023::Csrv
  :super ros::object
  :slots ())

(setf (get assignment_2_2023::Csrv :md5sum-) "9aa8c2e2b21fc8544d27640eeac21d97")
(setf (get assignment_2_2023::Csrv :datatype-) "assignment_2_2023/Csrv")
(setf (get assignment_2_2023::Csrv :request) assignment_2_2023::CsrvRequest)
(setf (get assignment_2_2023::Csrv :response) assignment_2_2023::CsrvResponse)

(defmethod assignment_2_2023::CsrvRequest
  (:response () (instance assignment_2_2023::CsrvResponse :init)))

(setf (get assignment_2_2023::CsrvRequest :md5sum-) "9aa8c2e2b21fc8544d27640eeac21d97")
(setf (get assignment_2_2023::CsrvRequest :datatype-) "assignment_2_2023/CsrvRequest")
(setf (get assignment_2_2023::CsrvRequest :definition-)
      "
---
float32 goal_x
float32 goal_y

")

(setf (get assignment_2_2023::CsrvResponse :md5sum-) "9aa8c2e2b21fc8544d27640eeac21d97")
(setf (get assignment_2_2023::CsrvResponse :datatype-) "assignment_2_2023/CsrvResponse")
(setf (get assignment_2_2023::CsrvResponse :definition-)
      "
---
float32 goal_x
float32 goal_y

")



(provide :assignment_2_2023/Csrv "9aa8c2e2b21fc8544d27640eeac21d97")


