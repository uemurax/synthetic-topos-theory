#lang typed/racket

(require morg/math
         (prefix-in tex: morg/math/tex)
         "../base/apply.rkt")

(provide Etale)

(define (Etale [i : MathTeX+Like])
  ((tex:mathcal "E") . $ . i))
