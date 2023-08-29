#lang at-exp typed/racket

(require morg/math
         "base/const.rkt")

(provide generic-elem)

(define (generic-elem [x : MathTeX+Like])
  (@const{d} . _ . x))
