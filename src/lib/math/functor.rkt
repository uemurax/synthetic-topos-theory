#lang typed/racket

(require morg/math
         "base/member.rkt"
         "base/arrow.rkt")

(provide is-functor)

(define (is-functor [F : MathTeX+Like]
                    [C : MathTeX+Like]
                    [D : MathTeX+Like])
  (F . :: . (C . -> . D)))
