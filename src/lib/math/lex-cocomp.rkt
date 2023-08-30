#lang at-exp typed/racket

(require morg/math
         "base/const.rkt"
         "base/apply.rkt"
         "base/free.rkt")

(provide LexCocomp
         free-lex-cocomp-pt
         generic-object
         etale-embed
         lex-cocomp-functor)

(define sym @const{LexCocomp})

(define (LexCocomp [U : MathTeX+Like] [V : MathTeX+Like])
  (sym . $* . U V))

(define ((lex-cocomp-functor [U : MathTeX+Like])
         [C : MathTeX+Like] [D : MathTeX+Like])
  ((sym . _ . U) . $* . C D))

(define ((free-lex-cocomp [U : MathTeX+Like])
         . [a : MathTeX+Like *])
  ((group (free . apply . a)) . _ . (sym . _ . U)))

(define generic-object
  @const{w})

(define (free-lex-cocomp-pt [U : MathTeX+Like])
  ((free-lex-cocomp U) generic-object))

(define (etale-embed [C : MathTeX+Like])
  (@const{E} . _ . C))
