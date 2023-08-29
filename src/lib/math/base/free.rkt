#lang typed/racket

(require morg/math
         (prefix-in tex: morg/math/tex)
         "seq.rkt")

(provide free)

(define (free . [a : MathTeX+Like *])
  (paren #:left tex:langle
         #:right tex:rangle
         (|,| . apply . a)))
