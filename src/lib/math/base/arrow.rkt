#lang typed/racket

(require morg/math
         (prefix-in l: "level.rkt")
         "seq.rkt"
         (prefix-in tex: morg/math/tex))

(provide (rename-out [arrow ->]
                     [arrow2 =>]
                     [ar ->-symbol])
         ->-chain)

(define ar tex:rightarrow)

(define arrow
  (binary #:level l:-> ar
          #:assoc 'right))

(define ->-chain
  (monoid #:level l:-> "" ar))

(define arrow2
  (binary #:level l:-> tex:Rightarrow
          #:assoc 'right))
