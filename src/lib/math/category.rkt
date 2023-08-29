#lang at-exp typed/racket

(require morg/math
         (prefix-in l: "base/level.rkt")
         "base/const.rkt"
         "base/member.rkt"
         "base/arrow.rkt")

(provide opposite
         slice
         morphism
         is-morphism
         is-object)

(define opposite
  (sup-op #:level l:unary @const{op}))

(define is-object ::)

(define morphism ->)

(define (is-morphism [f : MathTeX+Like]
                     [x : MathTeX+Like]
                     [y : MathTeX+Like])
  (f . :: . (x . morphism . y)))

(define slice
  (binary #:level l:binary "/"))
