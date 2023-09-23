#lang typed/racket

(require morg/math
         (prefix-in l: "level.rkt"))

(provide _!)

(define _!
  (sub-op #:level l:unary "!"))
