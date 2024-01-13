;; Auto-generated. Do not edit!


(when (boundp 'turtlebot_controller::Velocity)
  (if (not (find-package "TURTLEBOT_CONTROLLER"))
    (make-package "TURTLEBOT_CONTROLLER"))
  (shadow 'Velocity (find-package "TURTLEBOT_CONTROLLER")))
(unless (find-package "TURTLEBOT_CONTROLLER::VELOCITY")
  (make-package "TURTLEBOT_CONTROLLER::VELOCITY"))
(unless (find-package "TURTLEBOT_CONTROLLER::VELOCITYREQUEST")
  (make-package "TURTLEBOT_CONTROLLER::VELOCITYREQUEST"))
(unless (find-package "TURTLEBOT_CONTROLLER::VELOCITYRESPONSE")
  (make-package "TURTLEBOT_CONTROLLER::VELOCITYRESPONSE"))

(in-package "ROS")





(defclass turtlebot_controller::VelocityRequest
  :super ros::object
  :slots (_max _min ))

(defmethod turtlebot_controller::VelocityRequest
  (:init
   (&key
    ((:max __max) 0.0)
    ((:min __min) 0.0)
    )
   (send-super :init)
   (setq _max (float __max))
   (setq _min (float __min))
   self)
  (:max
   (&optional __max)
   (if __max (setq _max __max)) _max)
  (:min
   (&optional __min)
   (if __min (setq _min __min)) _min)
  (:serialization-length
   ()
   (+
    ;; float32 _max
    4
    ;; float32 _min
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _max
       (sys::poke _max (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _min
       (sys::poke _min (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _max
     (setq _max (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _min
     (setq _min (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass turtlebot_controller::VelocityResponse
  :super ros::object
  :slots (_x _z ))

(defmethod turtlebot_controller::VelocityResponse
  (:init
   (&key
    ((:x __x) 0.0)
    ((:z __z) 0.0)
    )
   (send-super :init)
   (setq _x (float __x))
   (setq _z (float __z))
   self)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:z
   (&optional __z)
   (if __z (setq _z __z)) _z)
  (:serialization-length
   ()
   (+
    ;; float32 _x
    4
    ;; float32 _z
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _x
       (sys::poke _x (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _z
       (sys::poke _z (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _x
     (setq _x (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _z
     (setq _z (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass turtlebot_controller::Velocity
  :super ros::object
  :slots ())

(setf (get turtlebot_controller::Velocity :md5sum-) "9642048b94dbb901a7afb7dca7c2308c")
(setf (get turtlebot_controller::Velocity :datatype-) "turtlebot_controller/Velocity")
(setf (get turtlebot_controller::Velocity :request) turtlebot_controller::VelocityRequest)
(setf (get turtlebot_controller::Velocity :response) turtlebot_controller::VelocityResponse)

(defmethod turtlebot_controller::VelocityRequest
  (:response () (instance turtlebot_controller::VelocityResponse :init)))

(setf (get turtlebot_controller::VelocityRequest :md5sum-) "9642048b94dbb901a7afb7dca7c2308c")
(setf (get turtlebot_controller::VelocityRequest :datatype-) "turtlebot_controller/VelocityRequest")
(setf (get turtlebot_controller::VelocityRequest :definition-)
      "float32 max
float32 min
---
float32 x
float32 z

")

(setf (get turtlebot_controller::VelocityResponse :md5sum-) "9642048b94dbb901a7afb7dca7c2308c")
(setf (get turtlebot_controller::VelocityResponse :datatype-) "turtlebot_controller/VelocityResponse")
(setf (get turtlebot_controller::VelocityResponse :definition-)
      "float32 max
float32 min
---
float32 x
float32 z

")



(provide :turtlebot_controller/Velocity "9642048b94dbb901a7afb7dca7c2308c")


