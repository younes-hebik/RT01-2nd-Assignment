;; Auto-generated. Do not edit!


(when (boundp 'assignment_2_2023::Custom)
  (if (not (find-package "ASSIGNMENT_2_2023"))
    (make-package "ASSIGNMENT_2_2023"))
  (shadow 'Custom (find-package "ASSIGNMENT_2_2023")))
(unless (find-package "ASSIGNMENT_2_2023::CUSTOM")
  (make-package "ASSIGNMENT_2_2023::CUSTOM"))

(in-package "ROS")
;;//! \htmlinclude Custom.msg.html


(defclass assignment_2_2023::Custom
  :super ros::object
  :slots (_posx _posy _velx _vely ))

(defmethod assignment_2_2023::Custom
  (:init
   (&key
    ((:posx __posx) 0.0)
    ((:posy __posy) 0.0)
    ((:velx __velx) 0.0)
    ((:vely __vely) 0.0)
    )
   (send-super :init)
   (setq _posx (float __posx))
   (setq _posy (float __posy))
   (setq _velx (float __velx))
   (setq _vely (float __vely))
   self)
  (:posx
   (&optional __posx)
   (if __posx (setq _posx __posx)) _posx)
  (:posy
   (&optional __posy)
   (if __posy (setq _posy __posy)) _posy)
  (:velx
   (&optional __velx)
   (if __velx (setq _velx __velx)) _velx)
  (:vely
   (&optional __vely)
   (if __vely (setq _vely __vely)) _vely)
  (:serialization-length
   ()
   (+
    ;; float32 _posx
    4
    ;; float32 _posy
    4
    ;; float32 _velx
    4
    ;; float32 _vely
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _posx
       (sys::poke _posx (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _posy
       (sys::poke _posy (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _velx
       (sys::poke _velx (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _vely
       (sys::poke _vely (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _posx
     (setq _posx (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _posy
     (setq _posy (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _velx
     (setq _velx (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _vely
     (setq _vely (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get assignment_2_2023::Custom :md5sum-) "96d26a4348b9e22969093b954705dc9f")
(setf (get assignment_2_2023::Custom :datatype-) "assignment_2_2023/Custom")
(setf (get assignment_2_2023::Custom :definition-)
      "float32 posx
float32 posy
float32 velx
float32 vely

")



(provide :assignment_2_2023/Custom "96d26a4348b9e22969093b954705dc9f")


