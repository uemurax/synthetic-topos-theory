#lang at-exp typed/racket

(require morg/math
         (prefix-in tex: morg/math/tex)
         (prefix-in l: "../base/level.rkt")
         "../base/const.rkt")

(provide hom
         hom-over
         id-over
         id)

(define hom-symbol tex:Rightarrow)

(define hom
  (binary #:level l:relation hom-symbol))

(define id
  @const{id})

(define (hom-over [B : MathTeX+Like]
                  [f : MathTeX+Like])
  (binary #:level l:relation
          (sub-sup hom-symbol
                   #:^ B
                   #:_ f)))

(define id-over
  @const{id})
