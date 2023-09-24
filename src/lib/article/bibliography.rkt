#lang typed/racket

(require morg/bibliography)

(provide bib
         (except-out
          (all-from-out morg/bibliography)
          bibliography
          make-bibliography))

(define bib (make-bibliography "Bibliography Item"))
