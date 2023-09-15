#lang typed/racket

(require morg/math
         (prefix-in tex: morg/math/tex)
         (prefix-in l: "../base/level.rkt")
         (submod "def-eq.rkt" extra)
         "../base/seq.rkt")

(provide subst)

(define subst-app
  (apply-with-parens
   #:level l:$
   #:left "["
   #:right "]"))

(define subst-bin
  (binary #:level l:relation
          (tex:mathrel
           ":" def-eq:symbol)))

(define (subst-format [z : (List MathTeX+Like MathTeX+Like)])
  (match z
    [(list x b)
     (x . subst-bin . b)]))

(define (subst [a : MathTeX+Like]
               . [rs : (List MathTeX+Like MathTeX+Like) *])
  (subst-app a
             (apply |,| (subst-format . map . rs))))
