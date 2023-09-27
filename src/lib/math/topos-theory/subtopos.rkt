#lang at-exp typed/racket

(require morg/math
         "../base/const.rkt")

(provide modality)

(define (modality [X : MathTeX+Like])
  (@const{m} . _ . X))
