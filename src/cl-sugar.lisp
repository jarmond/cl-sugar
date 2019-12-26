;;;; -*- mode: Lisp -*-

(in-package #:cl-sugar)

(defun vector-reader (stream char)
  (declare (ignore char))
  (let ((vals (read-delimited-list #\] stream t)))
    `(make-array ,(length vals) :initial-contents (list ,@vals))))

(defun enable-vector-reader ()
  (set-macro-character #\] (get-macro-character #\)))
  (set-macro-character #\[ #'vector-reader))

(defun pairs->alist (lst)
  (loop for x in lst
        and y in (cdr lst)
        and i from 1 to (length lst)
        when (oddp i) collect (cons x y)))

(defun hash-table-reader (stream char)
  (declare (ignore char))
  (let ((vals (read-delimited-list #\} stream t)))
    (if (not (evenp (length vals)))
        (error "Require even number of values")
        `(alist-hash-table ',(pairs->alist vals)))))

(defun enable-hash-table-reader ()
  (set-macro-character #\} (get-macro-character #\)))
  (set-macro-character #\{ #'hash-table-reader))
