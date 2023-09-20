#lang at-exp typed/racket

(require morg/math
         "base/const.rkt")

(provide cell)

(define (cell [n : MathTeX+Like])
  (@const{G} . _ . n))
