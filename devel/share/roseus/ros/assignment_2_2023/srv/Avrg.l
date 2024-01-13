;; Auto-generated. Do not edit!


(when (boundp 'assignment_2_2023::Avrg)
  (if (not (find-package "ASSIGNMENT_2_2023"))
    (make-package "ASSIGNMENT_2_2023"))
  (shadow 'Avrg (find-package "ASSIGNMENT_2_2023")))
(unless (find-package "ASSIGNMENT_2_2023::AVRG")
  (make-package "ASSIGNMENT_2_2023::AVRG"))
(unless (find-package "ASSIGNMENT_2_2023::AVRGREQUEST")
  (make-package "ASSIGNMENT_2_2023::AVRGREQUEST"))
(unless (find-package "ASSIGNMENT_2_2023::AVRGRESPONSE")
  (make-package "ASSIGNMENT_2_2023::AVRGRESPONSE"))

(in-package "ROS")





(defclass assignment_2_2023::AvrgRequest
  :super ros::object
  :slots ())

(defmethod assignment_2_2023::AvrgRequest
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

(defclass assignment_2_2023::AvrgResponse
  :super ros::object
  :slots (_dis _speed ))

(defmethod assignment_2_2023::AvrgResponse
  (:init
   (&key
    ((:dis __dis) 0.0)
    ((:speed __speed) 0.0)
    )
   (send-super :init)
   (setq _dis (float __dis))
   (setq _speed (float __speed))
   self)
  (:dis
   (&optional __dis)
   (if __dis (setq _dis __dis)) _dis)
  (:speed
   (&optional __speed)
   (if __speed (setq _speed __speed)) _speed)
  (:serialization-length
   ()
   (+
    ;; float32 _dis
    4
    ;; float32 _speed
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _dis
       (sys::poke _dis (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _speed
       (sys::poke _speed (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _dis
     (setq _dis (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _speed
     (setq _speed (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass assignment_2_2023::Avrg
  :super ros::object
  :slots ())

(setf (get assignment_2_2023::Avrg :md5sum-) "5df81caea40a0fa6af31fa77f59b6d1e")
(setf (get assignment_2_2023::Avrg :datatype-) "assignment_2_2023/Avrg")
(setf (get assignment_2_2023::Avrg :request) assignment_2_2023::AvrgRequest)
(setf (get assignment_2_2023::Avrg :response) assignment_2_2023::AvrgResponse)

(defmethod assignment_2_2023::AvrgRequest
  (:response () (instance assignment_2_2023::AvrgResponse :init)))

(setf (get assignment_2_2023::AvrgRequest :md5sum-) "5df81caea40a0fa6af31fa77f59b6d1e")
(setf (get assignment_2_2023::AvrgRequest :datatype-) "assignment_2_2023/AvrgRequest")
(setf (get assignment_2_2023::AvrgRequest :definition-)
      "
---
float32 dis
float32 speed

")

(setf (get assignment_2_2023::AvrgResponse :md5sum-) "5df81caea40a0fa6af31fa77f59b6d1e")
(setf (get assignment_2_2023::AvrgResponse :datatype-) "assignment_2_2023/AvrgResponse")
(setf (get assignment_2_2023::AvrgResponse :definition-)
      "
---
float32 dis
float32 speed

")



(provide :assignment_2_2023/Avrg "5df81caea40a0fa6af31fa77f59b6d1e")


