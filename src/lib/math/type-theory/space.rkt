#lang at-exp typed/racket

(require morg/math
         "../base/const.rkt"
         "../pullback.rkt"
         "function.rkt")

(provide Space
         space->space)

(define Space @const{Sp})

(define (space->space [S : MathTeX+Like] [A : MathTeX+Like])
  ((pullback S) . $ . A))
