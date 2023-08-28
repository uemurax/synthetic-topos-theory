#lang at-exp typed/racket

(require morg/math
         "base/const.rkt"
         "base/apply.rkt")

(provide LexCocomp)

(define (LexCocomp [U : MathTeX+Like] [V : MathTeX+Like])
  (@const{LexCocomp} . $* . U V))
