#lang at-exp typed/racket

(require morg/math
         (prefix-in tex: morg/math/tex)
         (prefix-in l: "base/level.rkt")
         "base/const.rkt"
         "base/member.rkt"
         "base/arrow.rkt")

(provide opposite
         slice
         coslice
         comp
         morphism
         is-morphism
         is-object*
         is-object)

(define opposite
  (sup-op #:level l:unary @const{op}))

(define is-object ::)

(define is-object* ::*)

(define morphism ->)

(define (is-morphism [f : MathTeX+Like]
                     [x : MathTeX+Like]
                     [y : MathTeX+Like])
  (f . :: . (x . morphism . y)))

(define slice
  (binary #:level l:binary "/"))

(define coslice
  (binary #:level l:binary "\\"))

(define id @const{id})

(define comp
  (monoid #:level l:binary id tex:circ))
