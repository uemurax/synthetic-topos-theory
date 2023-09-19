#lang typed/racket

(require morg/math
         (prefix-in tex: morg/math/tex)
         (prefix-in l: "base/level.rkt"))

(provide action
         action-l
         action-r)

(define action-symbol tex:bullet)

(define action
  (binary #:level l:binary action-symbol))

(define action-l
  (binary #:level l:binary action-symbol
          #:assoc 'right))

(define action-r
  (binary #:level l:binary action-symbol
          #:assoc 'left))
