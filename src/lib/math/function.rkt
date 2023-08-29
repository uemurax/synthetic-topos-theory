#lang typed/racket

(require morg/math
         (prefix-in tex: morg/math/tex)
         (prefix-in l: "base/level.rkt")
         "base/apply.rkt")

(provide /->
         $)

(define /->
  (binary #:level l:/-> tex:mapsto
          #:assoc 'right))
