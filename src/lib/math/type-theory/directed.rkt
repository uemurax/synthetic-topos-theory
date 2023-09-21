#lang at-exp typed/racket

(require morg/math
         (prefix-in tex: morg/math/tex)
         (prefix-in l: "../base/level.rkt")
         "../base/const.rkt")

(provide hom
         id)

(define hom
  (binary #:level l:relation tex:Rightarrow))

(define id
  @const{id})
