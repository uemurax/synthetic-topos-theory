#lang at-exp typed/racket

(require morg/math
         (prefix-in tex: morg/math/tex)
         "../base/const.rkt"
         (prefix-in l: "../base/level.rkt"))

(provide Prop
         forall
         not
         bottom
         or)

(define Prop @const{Prop})

(define (forall [x : MathTeX+Like]
                [P : MathTeX+Like])
  ((big-op #:level l:big-op
           (tex:mathop tex:forall))
   #:_ x
   P))

(define not
  (unary #:level l:unary tex:neg))

(define bottom tex:bot)

(define or
  (monoid #:level l:binary bottom tex:lor))
