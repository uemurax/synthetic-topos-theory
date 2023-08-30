#lang typed/racket

(require morg/math
         (prefix-in l: "base/level.rkt"))

(provide =)

(define =
  (binary #:level l:relation "="))
