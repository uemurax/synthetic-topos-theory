#lang typed/racket

(require morg/math
         (prefix-in tex: morg/math/tex)
         "element.rkt"
         (prefix-in l: "../base/level.rkt"))

(provide comprehension)

(define mid
  (binary #:level |l:,| tex:mid))

(define (comprehension [x : MathTeX+Like]
                       [A : MathTeX+Like]
                       [P : MathTeX+Like])
  (paren #:left tex:lbrace
         #:right tex:rbrace
         ((x . is-elem . A)
          . mid .
          P)))
