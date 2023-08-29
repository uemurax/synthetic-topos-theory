#lang at-exp typed/racket

(require morg/math
         (prefix-in tex: morg/math/tex)
         "base/const.rkt"
         (prefix-in l: "base/level.rkt"))

(provide *)

(define final-object @const{1})

(define *
  (monoid #:level l:* final-object tex:times))
