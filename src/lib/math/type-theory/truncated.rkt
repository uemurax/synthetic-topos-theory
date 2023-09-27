#lang at-exp typed/racket

(require morg/math
         "../base/const.rkt"
         "function.rkt")

(provide IsTrunc
         IsProp)

(define (IsTrunc [n : MathTeX+Like] [A : MathTeX+Like])
  ((@const{IsTrunc} . _ . n)
   . $ . A))

(define (IsProp [A : MathTeX+Like])
  (IsTrunc "-1" A))
