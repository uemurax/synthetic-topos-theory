#lang typed/racket

(require morg/math
         "base/arrow.rkt"
         "base/member.rkt")

(provide is-nat-trans)

(define (is-nat-trans [t : MathTeX+Like]
                      [F : MathTeX+Like]
                      [G : MathTeX+Like])
  (t . :: . (F . => . G)))
