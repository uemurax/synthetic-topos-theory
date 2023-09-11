#lang at-exp typed/racket

(require morg/math
         (prefix-in tex: morg/math/tex)
         "../base/apply.rkt")

(provide universe)

(define (universe [i : MathTeX+Like])
  (@tex:mathcal{U} . $ . i))
