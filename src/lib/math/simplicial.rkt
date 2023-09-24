#lang typed/racket

(require morg/math
         (prefix-in tex: morg/math/tex)
         (prefix-in l: "base/level.rkt"))

(provide std-simplex)

(define (std-simplex [n : MathTeX+Like])
  (tex:Delta
   . (apply-with-parens #:left tex:lbrack
                        #:right tex:rbrack
                        #:level l:$) .
   n))
