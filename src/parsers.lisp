(in-package :cl-parsec)

;; basic parsers
(defun id (value)
  (lambda (input)
    (list (cons value input))))

(defun item ()
  (lambda (input)
    (etypecase input
      (null nil)
      (string
       (unless (equal input "")
         (list (cons (aref input 0)
                     (subseq input 1))))))))

(defun zero ()
  (constantly nil))
