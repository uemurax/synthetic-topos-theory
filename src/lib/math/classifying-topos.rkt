#lang at-exp typed/racket

(require morg/math
         (prefix-in tex: morg/math/tex)
         "base/const.rkt")

(provide interpret
         etale-inclusion
         etale-coreflection
         generic-object)

(define (etale-inclusion [X : MathTeX+Like])
  ((group X) . ^ . tex:dagger))

(define (etale-coreflection [X : MathTeX+Like])
  ((group X) . _ . tex:dagger))

(define (interpret [X : MathTeX+Like] [A : MathTeX+Like])
  ((group
    (paren #:left (tex:mathopen "[" tex:negthinspace "[")
           #:right (tex:mathclose "]" tex:negthinspace "]")
           A))
   . _ . X))

(define (generic-object [X : MathTeX+Like])
  (@const{w} . _ . X))