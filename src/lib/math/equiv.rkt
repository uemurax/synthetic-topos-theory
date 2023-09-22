#lang typed/racket

(require morg/math
         (prefix-in tex: morg/math/tex)
         (prefix-in l: "base/level.rkt")
         "base/member.rkt")

(provide equiv
         equiv-symbol
         is-equiv)

(define equiv-symbol tex:simeq)

(define equiv
  (binary #:level l:relation tex:simeq))

(define (is-equiv [f : MathTeX+Like]
                  [A : MathTeX+Like]
                  [B : MathTeX+Like])
  (f . :: . (A . equiv . B)))
