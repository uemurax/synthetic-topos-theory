#lang typed/racket

(require morg/math
         (prefix-in tex: morg/math/tex)
         (prefix-in l: "base/level.rkt"))

(provide adjunction)

(define adjunction
  (binary #:level l:relation tex:dashv))
