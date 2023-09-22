#lang at-exp typed/racket

(require morg/math
         "../base/const.rkt"
         "../base/apply.rkt")

(provide Model)

(define (Model [S : MathTeX+Like]
               [A : MathTeX+Like])
  ((@const{Model} . ^ . S) . $ . A))
