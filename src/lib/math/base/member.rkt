#lang typed/racket

(require morg/math
         (prefix-in l: "level.rkt")
         "seq.rkt")

(provide ::
         ::*)

(define ::
  (binary #:level l:: ":"))

(: ::*-aux : ((Listof MathTeX+Like) MathTeX+Like (Listof MathTeX+Like) . -> . MathTeX+Like))

(define (::*-aux l x r)
  (match r
    [(list)
     ((|,w| . apply . (reverse l)) . :: . x)]
    [(list* y r)
     (::*-aux (list* x l) y r)]))

(define (::* [x : MathTeX+Like] [y : MathTeX+Like]
             . [r : MathTeX+Like *])
  (::*-aux (list x) y r))
