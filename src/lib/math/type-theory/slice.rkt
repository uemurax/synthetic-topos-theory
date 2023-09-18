#lang typed/racket

(require morg/math
         (prefix-in cat: "category.rkt")
         "element.rkt")

(provide slice)

(define (slice [T : MathTeX+Like]
               [x : MathTeX+Like]
               [A : MathTeX+Like])
  (T . cat:slice . (x . is-elem . A)))
