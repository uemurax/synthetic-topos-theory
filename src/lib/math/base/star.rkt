#lang typed/racket

(require morg/math
         (prefix-in l: "level.rkt"))

(provide ^*)

(define ^*
  (sup-op #:level l:unary "*"))
