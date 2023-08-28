#lang at-exp typed/racket

(require morg/markup/index)

(provide n-index)

(define-values (n-index print-n-index)
  (make-index))

(module* print #f
  (provide print-n-index))
