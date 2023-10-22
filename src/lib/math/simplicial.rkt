#lang at-exp typed/racket

(require morg/math
         (prefix-in tex: morg/math/tex)
         "base/const.rkt"
         (prefix-in l: "base/level.rkt"))

(provide std-simplex
         face^
         degen^)

(define (std-simplex [n : MathTeX+Like])
  (tex:Delta
   . (apply-with-parens #:left tex:lbrack
                        #:right tex:rbrack
                        #:level l:$) .
   n))

(define face-sym @const{d})
(define degen-sym @const{s})

(define (face^ [k : MathTeX+Like])
  (face-sym . ^ . k))

(define (degen^ [k : MathTeX+Like])
  (degen-sym . ^ . k))
