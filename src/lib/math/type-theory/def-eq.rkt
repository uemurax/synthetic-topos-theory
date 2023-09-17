#lang typed/racket

(require morg/math
         (prefix-in tex: morg/math/tex)
         (prefix-in l: "../base/level.rkt"))

(provide def-eq)

(define def-eq:symbol tex:equiv)

(define def-eq
  (binary #:level l:def-eq def-eq:symbol))

(module* extra #f
  (provide def-eq:symbol))
