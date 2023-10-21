#lang at-exp typed/racket

(require morg/math
         (prefix-in tex: morg/math/tex)
         "base/const.rkt"
         "base/point.rkt"
         "function.rkt")

(provide Rep
         Rep-pt
         Rep-pr)

(define Rep-symbol @const{R})

(define (Rep [C : MathTeX+Like])
  (Rep-symbol . $ . C))

(define (Rep-pt [C : MathTeX+Like])
  ((Rep-symbol . _ . pt) . $ . C))

(define (Rep-pr [C : MathTeX+Like])
  (tex:rho . $ . C))
