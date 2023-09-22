#lang typed/racket

(require morg/math
         (prefix-in l: "level.rkt")
         (prefix-in tex: morg/math/tex))

(provide ->
         (rename-out [ar ->-symbol])
         ->-chain)

(define ar tex:rightarrow)

(define ->
  (binary #:level l:-> ar
          #:assoc 'right))

(define ->-chain
  (monoid #:level l:-> "" ar))
