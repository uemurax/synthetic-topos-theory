#lang at-exp typed/racket

(require "base/const.rkt"
         morg/math)

(provide cat->topos
         interval)

(define cat->topos
  @const{Q})

(define interval
  @(macro-1 "mathbb"){I})
