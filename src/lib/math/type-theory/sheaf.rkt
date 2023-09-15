#lang at-exp typed/racket

(require morg/math
         "../classifying-topos.rkt"
         "../base/const.rkt"
         "../base/seq.rkt"
         "function.rkt")

(provide space->sheaf
         Sheaf
         mor->model
         generic-object)

(define (Sheaf [S : MathTeX+Like])
  (@const{Sh} . $ . S))

(define space->sheaf interpret)

(define (mor->model [S : MathTeX+Like]
                    [A : MathTeX+Like])
  (@const{c} . _ . (S . |,| . A)))
