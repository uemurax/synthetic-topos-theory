#lang at-exp typed/racket

(require morg/math
         (prefix-in tex: morg/math/tex)
         "../base/apply.rkt")

(provide universe)

(define universe-style tex:mathcal)

(define (universe [i : MathTeX+Like])
  (@universe-style{U} . $ . i))

(module* extra #f
  (provide universe-style))
