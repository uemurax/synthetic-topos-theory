#lang at-exp typed/racket

(require morg/math
         "base/const.rkt"
         "base/record.rkt"
         (prefix-in t: "topos.rkt"))

(provide Carrier
         etale-classifier
         etale-classifier-pt
         etale-classifier-pr
         Etale)

(define (Carrier [C : MathTeX+Like])
  (C . |.| . @const{Carrier}))

(define (etale-classifier [C : MathTeX+Like])
  (C . |.| . t:object-classifier))

(define (etale-classifier-pt [C : MathTeX+Like])
  (C . |.| . t:object-classifier-pt))

(define (etale-classifier-pr [C : MathTeX+Like])
  (C . |.| . t:object-classifier-pr))

(define (Etale [x : MathTeX+Like])
  (t:Etale x))
