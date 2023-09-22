#lang typed/racket

(require morg/math
         "../base/star.rkt"
         (prefix-in tex: morg/math/tex))

(provide inverse-image
         global-section)

(define inverse-image ^*)

(define (global-section [S : MathTeX+Like])
  (tex:Gamma . _ . S))
