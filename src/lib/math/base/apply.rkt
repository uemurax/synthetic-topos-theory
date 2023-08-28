#lang typed/racket

(require morg/math
         (prefix-in l: "level.rkt")
         "seq.rkt")

(provide $
         $*)

(define $
  (apply-with-parens #:level l:$))

(define ($* [f : MathTeX+Like] . [as : MathTeX+Like *])
  (f . $ . (apply |,| as)))
