#lang typed/racket

(require morg/math
         (prefix-in tex: morg/math/tex)
         (prefix-in l: "base/level.rkt")
         "base/apply.rkt"
         "base/seq.rkt"
         (except-in "base/arrow.rkt" ->)
         (prefix-in ar: "base/arrow.rkt"))

(provide /->
         /->*
         (rename-out [ar:-> ->])
         $
         $*)

(define /->
  (binary #:level l:/-> tex:mapsto
          #:assoc 'right))

(: /->*-aux : ((Listof MathTeX+Like) MathTeX+Like (Listof MathTeX+Like) . -> . MathTeX+Like))

(define (/->*-aux l x r)
  (match r
    [(list)
     ((apply |,w| (reverse l)) . /-> . x)]
    [(list* y r)
     (/->*-aux (list* x l) y r)]))

(define (/->* [x : MathTeX+Like]
              [y : MathTeX+Like]
              . [r : MathTeX+Like *])
  (/->*-aux (list x) y r))
