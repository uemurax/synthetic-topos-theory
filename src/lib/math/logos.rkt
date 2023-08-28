#lang at-exp typed/racket

(require morg/math
         "base/const.rkt"
         "base/apply.rkt")

(provide Logos)

(define (Logos [U : MathTeX+Like])
  (@const{Logos} . $ . U))
