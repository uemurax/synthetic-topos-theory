#lang typed/racket

(require morg/math
         (prefix-in tex: morg/math/tex))

(provide internal)

(define internal-op
  (binary #:level #f
          (tex:mathrel "@")))

(define (internal [X : MathTeX+Like]
                  [A : MathTeX+Like])
  (A . internal-op . X))
