#lang at-exp typed/racket

(require morg/math
         "../base/const.rkt"
         "function.rkt")

(provide IsContr)

(define (IsContr [A : MathTeX+Like])
  (@const{IsContr} . $ . A))
