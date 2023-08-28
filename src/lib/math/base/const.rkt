#lang typed/racket

(require morg/math
         (prefix-in tex: morg/math/tex))

(provide const)

(define (const . [a : MathTeX+Like *])
  (tex:mathord
   (tex:textnormal
    (tex:textsf . apply . a))))
