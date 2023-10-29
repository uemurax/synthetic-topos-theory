#lang typed/racket

(require morg/math
         (prefix-in tex: morg/math/tex)
         (prefix-in l: "base/level.rkt"))

(provide >=
         -)

(define >=
  (binary #:level l:relation tex:ge))

(define -
  (binary #:level l:binary "-"))
