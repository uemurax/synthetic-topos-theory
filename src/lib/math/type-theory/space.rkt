#lang at-exp typed/racket

(require morg/math
         "../base/const.rkt"
         "../pullback.rkt"
         "function.rkt")

(provide Space
         generic-global-section
         space->space)

(define Space @const{Sp})

(define (space->space [S : MathTeX+Like] [A : MathTeX+Like])
  ((pullback S) . $ . A))

(define (generic-global-section [S : MathTeX+Like])
  (@const{w} . _ . S))
