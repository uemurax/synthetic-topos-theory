#lang at-exp typed/racket

(require morg/math
         "../base/const.rkt"
         "function.rkt")

(provide Finite)

(define (Finite [n : MathTeX+Like])
  (@const{Fin} . $ . n))
