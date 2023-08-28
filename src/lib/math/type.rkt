#lang at-exp typed/racket

(require morg/math
         "base/const.rkt"
         "base/apply.rkt")

(provide Type)

(define (Type [U : MathTeX+Like])
  (@const{Type} . $ . U))
