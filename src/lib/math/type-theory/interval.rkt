#lang at-exp typed/racket

(require morg/math
         (prefix-in tex: morg/math/tex)
         "../base/const.rkt"
         "../simplicial.rkt"
         (prefix-in l: "../base/level.rkt")
         (prefix-in tex: "../base/tex.rkt"))

(provide interval
         std-simplex
         <=-symbol
         <=
         bottom
         top)

(define interval
  @tex:mathbb{I})

(define <=-symbol tex:le)

(define <=
  (binary #:level l:relation <=-symbol))

(define bottom @const{b})

(define top @const{t})
