;; Auto-generated. Do not edit!


(when (boundp 'robot_description::Position)
  (if (not (find-package "ROBOT_DESCRIPTION"))
    (make-package "ROBOT_DESCRIPTION"))
  (shadow 'Position (find-package "ROBOT_DESCRIPTION")))
(unless (find-package "ROBOT_DESCRIPTION::POSITION")
  (make-package "ROBOT_DESCRIPTION::POSITION"))
(unless (find-package "ROBOT_DESCRIPTION::POSITIONREQUEST")
  (make-package "ROBOT_DESCRIPTION::POSITIONREQUEST"))
(unless (find-package "ROBOT_DESCRIPTION::POSITIONRESPONSE")
  (make-package "ROBOT_DESCRIPTION::POSITIONRESPONSE"))

(in-package "ROS")





(defclass robot_description::PositionRequest
  :super ros::object
  :slots (_x _y _theta ))

(defmethod robot_description::PositionRequest
  (:init
   (&key
    ((:x __x) 0.0)
    ((:y __y) 0.0)
    ((:theta __theta) 0.0)
    )
   (send-super :init)
   (setq _x (float __x))
   (setq _y (float __y))
   (setq _theta (float __theta))
   self)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:theta
   (&optional __theta)
   (if __theta (setq _theta __theta)) _theta)
  (:serialization-length
   ()
   (+
    ;; float32 _x
    4
    ;; float32 _y
    4
    ;; float32 _theta
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _x
       (sys::poke _x (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _y
       (sys::poke _y (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _theta
       (sys::poke _theta (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _x
     (setq _x (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _y
     (setq _y (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _theta
     (setq _theta (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass robot_description::PositionResponse
  :super ros::object
  :slots (_ok ))

(defmethod robot_description::PositionResponse
  (:init
   (&key
    ((:ok __ok) nil)
    )
   (send-super :init)
   (setq _ok __ok)
   self)
  (:ok
   (&optional (__ok :null))
   (if (not (eq __ok :null)) (setq _ok __ok)) _ok)
  (:serialization-length
   ()
   (+
    ;; bool _ok
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _ok
       (if _ok (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _ok
     (setq _ok (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass robot_description::Position
  :super ros::object
  :slots ())

(setf (get robot_description::Position :md5sum-) "2f1d14ba96d90c01d836ab12b368aeb3")
(setf (get robot_description::Position :datatype-) "robot_description/Position")
(setf (get robot_description::Position :request) robot_description::PositionRequest)
(setf (get robot_description::Position :response) robot_description::PositionResponse)

(defmethod robot_description::PositionRequest
  (:response () (instance robot_description::PositionResponse :init)))

(setf (get robot_description::PositionRequest :md5sum-) "2f1d14ba96d90c01d836ab12b368aeb3")
(setf (get robot_description::PositionRequest :datatype-) "robot_description/PositionRequest")
(setf (get robot_description::PositionRequest :definition-)
      "float32 x
float32 y
float32 theta
---
bool ok

")

(setf (get robot_description::PositionResponse :md5sum-) "2f1d14ba96d90c01d836ab12b368aeb3")
(setf (get robot_description::PositionResponse :datatype-) "robot_description/PositionResponse")
(setf (get robot_description::PositionResponse :definition-)
      "float32 x
float32 y
float32 theta
---
bool ok

")



(provide :robot_description/Position "2f1d14ba96d90c01d836ab12b368aeb3")


