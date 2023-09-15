#lang at-exp typed/racket

(require morg/math
         "../classifying-topos.rkt"
         "../base/const.rkt"
         "function.rkt")

(provide space->sheaf
         Sheaf
         generic-object)

(define (Sheaf [S : MathTeX+Like])
  (@const{Sh} . $ . S))

(define space->sheaf interpret)
