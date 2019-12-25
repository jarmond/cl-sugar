;;;; -*- mode: Lisp -*-

(defpackage #:cl-sugar
  (:nicknames #:sugar)
  (:use #:cl #:alexandria)
  (:export #:enable-vector-reader
           #:enable-hash-table-reader))
