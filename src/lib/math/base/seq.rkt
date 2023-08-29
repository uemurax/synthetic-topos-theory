#lang typed/racket

(require morg/math
         (prefix-in l: "level.rkt"))

(provide |,|
         |,w|)

(define |,|
  (monoid #:level |l:,| "" ","))

(define |,w|
  (monoid #:level |l:,w| "" ","))
