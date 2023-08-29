#lang typed/racket

(require morg/math
         "base/seq.rkt")

(provide tuple)

(define (tuple . [a : MathTeX+Like *])
  (paren (|,| . apply . a)))
