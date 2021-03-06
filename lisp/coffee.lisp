;
; Coffee Mug Implementation
;
(defvar cup-size 10)
(defvar sip-size 2)
(defvar task-count 50)
(defvar pot-size 100)
(defun execute-task()(decf task-count 1))
(defun task-done()(= task-count 0))
(defun drink-coffee()(decf cup-size sip-size))
(defun coffee-cup-empty()(= cup-size 0))
(defun refill-coffee-cup()(setq cup-size 10))
(defun coffee-pot-empty()(= pot-size 0))
(defun make-coffee-pot()(setq pot-size 100))

(loop 
    (drink-coffee)
    (execute-task)
    (if (coffee-cup-empty)
        (if (coffee-pot-empty)
            (make-coffee-pot)
        )
        (refill-coffee-cup)
    )
    (when (task-done) (return T))
)