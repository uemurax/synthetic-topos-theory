#lang at-exp typed/racket

(require morg/math
         (prefix-in tex: morg/math/tex)
         (prefix-in tex: "base/tex.rkt")
         "base/star.rkt"
         "base/const.rkt"
         "base/apply.rkt")

(provide Topos
         Topos1
         object-classifier
         object-classifier-pt
         object-classifier-pr
         object-classifier^
         object-classifier^-pt
         object-classifier^-pr
         inverse-image
         interpret
         Etale
         ShTopos
         Sh)

(define sym @const{Topos})

(define (Topos [U : MathTeX+Like])
  (sym . $ . U))

(define (Topos1 [U : MathTeX+Like])
  ((sym . ^ . "(1)") . $ . U))

(define Sh @const{Sh})

(define object-classifier
  @tex:mathbb{A})

(define pt tex:bullet)

(define object-classifier-pt
  (object-classifier . _ . pt))

(define object-classifier-pr
  @const{p})

(define (object-classifier^ [V : MathTeX+Like])
  (object-classifier . ^ . (paren V)))

(define (object-classifier^-pt [V : MathTeX+Like])
  (sub-sup object-classifier
           #:^ (paren V)
           #:_ pt))

(define (object-classifier^-pr [V : MathTeX+Like])
  (object-classifier-pr . ^ . (paren V)))

(define inverse-image ^*)

(define (Etale [X : MathTeX+Like])
  (@const{Etale} . $ . X))

(define (ShTopos [U : MathTeX+Like] [V : MathTeX+Like])
  (Sh . $* . (Topos1 U) V))

(define (interpret [X : MathTeX+Like] [A : MathTeX+Like])
  ((group
    (paren #:left (tex:mathopen "[" tex:negthinspace "[")
           #:right (tex:mathclose "]" tex:negthinspace "]")
           A))
   . _ . X))
