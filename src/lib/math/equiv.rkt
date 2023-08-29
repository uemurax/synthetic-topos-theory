#lang typed/racket

(require morg/math
         (prefix-in tex: morg/math/tex)
         (prefix-in l: "base/level.rkt"))

(provide equiv)

(define equiv
  (binary #:level l:relation tex:simeq))
