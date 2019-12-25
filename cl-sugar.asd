;;;; -*- mode: Lisp -*-

(asdf:defsystem #:cl-sugar
  :description "Syntactic sugar for Common Lisp inspired by modern languages"
  :author "Jonathan Armond <jwarmond@outlook.com>"
  :license  "MIT, see LICENSE"
  :version "0.0.1"
  :depends-on (:alexandria)
  :serial t
  :pathname "src"
  :components ((:file "package")
               (:file "cl-sugar")))
