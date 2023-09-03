#lang typed/racket

(require morg/math
         (prefix-in l: "level.rkt"))

(provide |.|)

(define |.|
  (binary #:level |l:.| "."
          #:assoc 'left))
