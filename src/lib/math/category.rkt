#lang at-exp typed/racket

(require morg/math
         (prefix-in tex: morg/math/tex)
         (prefix-in l: "base/level.rkt")
         "product.rkt"
         "base/const.rkt"
         "base/member.rkt"
         "base/arrow.rkt")

(provide opposite
         slice
         coslice
         comp
         morphism
         morphism-chain
         Object
         Hom
         is-morphism
         is-global-section
         is-object*
         is-object)

(define opposite
  (sup-op #:level l:unary @const{op}))

(define is-object ::)

(define is-object* ::*)

(define Object @const{Obj})

(define morphism ->)

(define morphism-chain ->-chain)

(define (is-morphism [f : MathTeX+Like]
                     [x : MathTeX+Like]
                     [y : MathTeX+Like])
  (f . :: . (x . morphism . y)))

(define (is-global-section [f : MathTeX+Like]
                           [x : MathTeX+Like])
  (is-morphism f (*) x))

(define slice
  (binary #:level l:binary "/"))

(define coslice
  (binary #:level l:binary "\\"))

(define id @const{id})

(define comp
  (monoid #:level l:binary id tex:circ))

(define (Hom [C : MathTeX+Like])
  (@const{Hom} . _ . C))
