#lang typed/racket

(require morg/math
         (prefix-in tex: morg/math/tex)
         "../base/apply.rkt")

(provide Etale
         Etale-symbol)

(define Etale-symbol (tex:mathcal "E"))

(define (Etale [i : MathTeX+Like])
  (Etale-symbol . $ . i))
