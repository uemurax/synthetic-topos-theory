#lang at-exp typed/racket

(require morg/math
         "base/member.rkt"
         (submod "base/member.rkt" extra)
         (rename-in "base/arrow.rkt" [-> ar])
         "base/apply.rkt"
         "base/const.rkt")

(provide is-functor
         is-functor*
         Functor
         functor)

(define functor ar)

(define (is-functor [F : MathTeX+Like]
                    [C : MathTeX+Like]
                    [D : MathTeX+Like])
  (F . :: . (C . functor . D)))

(: is-functor*-aux : ((Listof MathTeX+Like)
                      MathTeX+Like
                      MathTeX+Like
                      (Listof MathTeX+Like)
                      . -> . MathTeX+Like))

(define (is-functor*-aux l X Y r)
  (match r
    [(list)
     (::*-aux l (X . functor . Y) (list))]
    [(list* Z r)
     (is-functor*-aux (list* X l) Y Z r)]))

(define (is-functor* [F : MathTeX+Like]
                     [X : MathTeX+Like]
                     [Y : MathTeX+Like]
                     . [r : MathTeX+Like *])
  (is-functor*-aux (list F) X Y r))

(define (Functor [C : MathTeX+Like] [D : MathTeX+Like])
  (@const{Fun} . $* . C D))
