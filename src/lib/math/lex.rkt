#lang at-exp typed/racket

(require morg/math
         "base/const.rkt"
         "base/apply.rkt")

(provide lex-functor)

(define (lex-functor [C : MathTeX+Like]
                     [D : MathTeX+Like])
  (@const{Lex} . $* . C D))
