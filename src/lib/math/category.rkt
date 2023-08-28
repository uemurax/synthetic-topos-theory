#lang at-exp typed/racket

(require morg/math
         (prefix-in l: "base/level.rkt")
         "base/const.rkt")

(provide opposite)

(define opposite
  (sup-op #:level l:unary @const{op}))
