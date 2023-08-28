#lang at-exp typed/racket

(require morg/math"base/const.rkt"
         "base/apply.rkt")

(provide Topos)

(define (Topos [U : MathTeX+Like])
  (@const{Topos} . $ . U))
