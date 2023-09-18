#lang at-exp typed/racket

(require morg/math
         "../base/const.rkt")

(provide GlobalSection)

(define (GlobalSection [T : MathTeX+Like])
  (@const{GS} . _ . T))
