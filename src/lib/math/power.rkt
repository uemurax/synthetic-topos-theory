#lang typed/racket

(require morg/math
         (prefix-in l: "base/level.rkt"))

(provide power)

(define power
  (binary #:level l:binary (macro "pitchfork")
          #:assoc 'right))
