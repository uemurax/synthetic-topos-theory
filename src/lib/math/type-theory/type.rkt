#lang at-exp typed/racket

(require morg/math
         "../base/const.rkt"
         "judgment.rkt"
         "../base/seq.rkt"
         "../base/apply.rkt"
         (submod "../base/member.rkt" extra))

(provide Type
         is-Type
         is-Type*)

(define (Type [i : MathTeX+Like])
  (@const{Type} . $ . i))

(define (is-Type [A : MathTeX+Like] [i : MathTeX+Like])
  (A . is . (Type i)))

(: is-Type*-aux : ((Listof MathTeX+Like)
                   MathTeX+Like
                   (Listof MathTeX+Like)
                   . -> . MathTeX+Like))

(define (is-Type*-aux l i r)
  (match r
    [(list) (::*-aux l (Type i) (list))]
    [(list* j r)
     (is-Type*-aux (list* i l) j r)]))

(define (is-Type* [x : MathTeX+Like]
                  [y : MathTeX+Like]
                  . [rs : MathTeX+Like *])
  (is-Type*-aux (list x) y rs))
