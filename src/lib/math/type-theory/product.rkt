#lang typed/racket

(require morg/math
         (prefix-in tex: morg/math/tex)
         (prefix-in l: "../base/level.rkt")
         "element.rkt"
         "../function.rkt")

(provide product
         pack
         unpack)

(define (product [x : MathTeX+Like]
                 [A : MathTeX+Like]
                 [B : MathTeX+Like])
  ((big-op #:level l:big-op
           tex:prod)
   #:_ (x . is-elem . A)
   B))

(define (pack [x : MathTeX+Like]
              [b : MathTeX+Like])
  (x . /-> . b))

(define (unpack [a : MathTeX+Like]
                [f : MathTeX+Like])
  (f . $ . a))
