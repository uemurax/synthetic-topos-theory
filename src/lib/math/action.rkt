#lang typed/racket

(require morg/math
         (prefix-in tex: morg/math/tex)
         (prefix-in l: "base/level.rkt"))

(provide action)

(define action
  (binary #:level l:binary tex:bullet))
