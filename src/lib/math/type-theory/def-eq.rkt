#lang typed/racket

(require morg/math
         (prefix-in tex: morg/math/tex)
         (prefix-in l: "../base/level.rkt"))

(provide def-eq)

(define def-eq
  (binary #:level l:relation tex:equiv))
