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
         inverse-image
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

(define object-classifier-pt
  (object-classifier . _ . tex:bullet))

(define object-classifier-pr
  @const{p})

(define inverse-image ^*)

(define (Etale [X : MathTeX+Like])
  (@const{Etale} . $ . X))

(define (ShTopos [U : MathTeX+Like] [V : MathTeX+Like])
  (Sh . $* . (Topos1 U) V))
