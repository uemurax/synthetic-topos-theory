#lang at-exp typed/racket

(require morg/math
         (prefix-in tex: morg/math/tex)
         (prefix-in tex: "base/tex.rkt")
         "base/star.rkt"
         "base/const.rkt"
         "base/apply.rkt")

(provide Topos
         object-classifier
         object-classifier-pt
         object-classifier-pr
         inverse-image
         Sh)

(define (Topos [U : MathTeX+Like])
  (@const{Topos} . $ . U))

(define Sh @const{Sh})

(define object-classifier
  @tex:mathbb{A})

(define object-classifier-pt
  (object-classifier . _ . tex:bullet))

(define object-classifier-pr
  @const{p})

(define inverse-image ^*)
