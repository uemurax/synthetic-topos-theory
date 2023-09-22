#lang typed/racket

(require morg/math
         (prefix-in l: "level.rkt"))

(provide ^*
         _*)

(define * "*")

(define ^*
  (sup-op #:level l:unary *))

(define _*
  (sub-op #:level l:unary *))
