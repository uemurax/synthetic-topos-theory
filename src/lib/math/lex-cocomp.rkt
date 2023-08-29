#lang at-exp typed/racket

(require morg/math
         "base/const.rkt"
         "base/apply.rkt")

(provide LexCocomp
         lex-cocomp-functor)

(define (LexCocomp [U : MathTeX+Like] [V : MathTeX+Like])
  (@const{LexCocomp} . $* . U V))

(define ((lex-cocomp-functor [U : MathTeX+Like])
         [C : MathTeX+Like] [D : MathTeX+Like])
  ((@const{LexCocomp} . _ . U) . $* . C D))
