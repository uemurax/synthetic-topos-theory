#lang at-exp typed/racket

(require morg/math
         "../base/const.rkt")

(provide GlobalSection
         Constant)

(define (GlobalSection [T : MathTeX+Like])
  (@const{GS} . _ . T))

(define (Constant [T : MathTeX+Like])
  (@const{C} . _ . T))
