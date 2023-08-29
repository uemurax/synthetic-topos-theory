#lang typed/racket

(require morg/math
         (prefix-in l: "base/level.rkt"))

(provide pullback)

(define pullback
  (sup-op #:level l:unary "*"))
