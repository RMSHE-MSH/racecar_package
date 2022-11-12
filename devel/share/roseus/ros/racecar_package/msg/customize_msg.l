;; Auto-generated. Do not edit!


(when (boundp 'racecar_package::customize_msg)
  (if (not (find-package "RACECAR_PACKAGE"))
    (make-package "RACECAR_PACKAGE"))
  (shadow 'customize_msg (find-package "RACECAR_PACKAGE")))
(unless (find-package "RACECAR_PACKAGE::CUSTOMIZE_MSG")
  (make-package "RACECAR_PACKAGE::CUSTOMIZE_MSG"))

(in-package "ROS")
;;//! \htmlinclude customize_msg.msg.html


(defclass racecar_package::customize_msg
  :super ros::object
  :slots (_name _age _height ))

(defmethod racecar_package::customize_msg
  (:init
   (&key
    ((:name __name) "")
    ((:age __age) 0)
    ((:height __height) 0.0)
    )
   (send-super :init)
   (setq _name (string __name))
   (setq _age (round __age))
   (setq _height (float __height))
   self)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:age
   (&optional __age)
   (if __age (setq _age __age)) _age)
  (:height
   (&optional __height)
   (if __height (setq _height __height)) _height)
  (:serialization-length
   ()
   (+
    ;; string _name
    4 (length _name)
    ;; int32 _age
    4
    ;; float32 _height
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; int32 _age
       (write-long _age s)
     ;; float32 _height
       (sys::poke _height (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int32 _age
     (setq _age (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32 _height
     (setq _height (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get racecar_package::customize_msg :md5sum-) "0478132ca0c3bd1c734b5491000dabb1")
(setf (get racecar_package::customize_msg :datatype-) "racecar_package/customize_msg")
(setf (get racecar_package::customize_msg :definition-)
      "string name
int32 age
float32 height
")



(provide :racecar_package/customize_msg "0478132ca0c3bd1c734b5491000dabb1")


