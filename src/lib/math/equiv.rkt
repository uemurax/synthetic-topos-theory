#lang typed/racket

(require morg/math
         (prefix-in tex: morg/math/tex)
         (prefix-in l: "base/level.rkt")
         "base/member.rkt")

(provide equiv
         is-equiv)

(define equiv
  (binary #:level l:relation tex:simeq))

(define (is-equiv [f : MathTeX+Like]
                  [A : MathTeX+Like]
                  [B : MathTeX+Like])
  (f . :: . (A . equiv . B)))
