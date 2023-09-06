#lang at-exp typed/racket

(require morg/math
         (prefix-in tex: morg/math/tex)
         "base/const.rkt")

(provide interpret
         generic-object)

(define (interpret [X : MathTeX+Like] [A : MathTeX+Like])
  ((group
    (paren #:left (tex:mathopen "[" tex:negthinspace "[")
           #:right (tex:mathclose "]" tex:negthinspace "]")
           A))
   . _ . X))

(define (generic-object [X : MathTeX+Like])
  (@const{w} . _ . X))
