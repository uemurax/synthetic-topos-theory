#lang at-exp typed/racket

(require morg/math
         (prefix-in tex: morg/math/tex)
         "../base/apply.rkt")

(provide Sheaf)

(define (Sheaf [S : MathTeX+Like] [i : MathTeX+Like])
  (@tex:mathcal{S} . $* . S i))
