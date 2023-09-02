#lang at-exp typed/racket

(require morg/math
         (prefix-in tex: morg/math/tex)
         "base/const.rkt"
         (prefix-in l: "base/level.rkt")
         "base/apply.rkt")

(provide Logos
         enlarge)

(define (Logos [U : MathTeX+Like])
  (@const{Logos} . $ . U))

(define (enlarge [V : MathTeX+Like])
  (unary #:level l:unary
         (tex:mathop (tex:Uparrow . ^ . V))))
