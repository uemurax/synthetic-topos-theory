#lang at-exp typed/racket

(require morg/math
         "base/member.rkt"
         "base/arrow.rkt"
         "base/apply.rkt"
         "base/const.rkt")

(provide is-functor
         Functor
         functor)

(define functor ->)

(define (is-functor [F : MathTeX+Like]
                    [C : MathTeX+Like]
                    [D : MathTeX+Like])
  (F . :: . (C . functor . D)))

(define (Functor [C : MathTeX+Like] [D : MathTeX+Like])
  (@const{Fun} . $* . C D))
