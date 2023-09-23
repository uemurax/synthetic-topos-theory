#lang at-exp typed/racket

(require morg/math
         (prefix-in tex: morg/math/tex)
         "../base/const.rkt"
         (prefix-in f: "../base/free.rkt")
         (prefix-in l: "../base/level.rkt"))

(provide LinearOrder
         Carrier
         <=
         free
         bottom
         top)

(define LinearOrder @const{LO})

(define Carrier @const{Carrier})

(define <=
  (binary #:level l:relation tex:le))

(define bottom @const{b})

(define top @const{t})

(define (free [n : MathTeX+Like])
  ((group (f:free n)) . _ . LinearOrder))
