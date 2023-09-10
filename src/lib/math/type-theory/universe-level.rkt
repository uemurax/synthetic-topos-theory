#lang at-exp typed/racket

(require morg/math
         (prefix-in tex: morg/math/tex)
         "../base/const.rkt"
         (prefix-in l: "../base/level.rkt")
         "../base/apply.rkt"
         "../base/seq.rkt"
         "judgment.rkt")

(provide Level
         is-Level
         is-Level*
         <=
         zero
         succ)

(define Level @const{Level})

(define (is-Level [i : MathTeX+Like])
  (i . is . Level))

(define (is-Level* [i : MathTeX+Like] . [rs : MathTeX+Like *])
  (is-Level (|,w| . apply . i rs)))

(define <=
  (binary #:level l:relation tex:le))

(define zero "0")

(define (succ [i : MathTeX+Like])
  (@const{succ} . $ . i))
