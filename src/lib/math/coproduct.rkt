#lang at-exp typed/racket

(require morg/math
         (prefix-in tex: morg/math/tex)
         "base/const.rkt"
         (prefix-in l: "base/level.rkt"))

(provide +
         _+_)

(define initial-object @const{0})

(define +
  (monoid #:level l:+ initial-object "+"))

(define (_+_ [f : MathTeX+Like] [g : MathTeX+Like])
  (binary #:level l:+
          (tex:mathbin
           ((group) . _ . f)
           (tex:mathord
            ("+" . _ . g)))))
