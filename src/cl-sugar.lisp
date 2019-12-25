;;;; -*- mode: Lisp -*-

(in-package #:cl-sugar)

(defun vector-reader (stream char)
  (declare (ignore char))
  (let ((vals (read-delimited-list #\] stream t)))
    `(make-array ,(length vals) :initial-contents (list ,@vals))))

(defun enable-vector-reader ()
  (set-macro-character #\] (get-macro-character #\)))
  (set-macro-character #\[ #'vector-reader))

(defun hash-table-reader (stream char)
  (declare (ignore char))
  (let ((vals (read-delimited-list #\} stream t)))
    `(alist-hash-table (list ,@(mapcar (lambda (x) (cons 'cons x)) vals)))))

(defun enable-hash-table-reader ()
  (set-macro-character #\} (get-macro-character #\)))
  (set-macro-character #\{ #'hash-table-reader))
