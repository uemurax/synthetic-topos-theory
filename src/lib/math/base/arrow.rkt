#lang typed/racket

(require morg/math
         (prefix-in l: "level.rkt")
         (prefix-in tex: morg/math/tex))

(provide ->)

(define ->
  (binary #:level l:-> tex:rightarrow
          #:assoc 'right))
