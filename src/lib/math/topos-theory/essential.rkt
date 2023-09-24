#lang at-exp typed/racket

(require morg/math
         "../base/const.rkt"
         "../base/bang.rkt")

(provide left-adjoint
         corepr-object)

(define left-adjoint _!)

(define (corepr-object [a : MathTeX+Like])
  (@const{e} . _ . a))
