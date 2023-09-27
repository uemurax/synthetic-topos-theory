#lang at-exp typed/racket

(require morg/math
         "../base/const.rkt")

(provide modality
         Subtopos)

(define Subtopos @const{SubTop})

(define (modality [X : MathTeX+Like])
  (@const{m} . _ . X))
