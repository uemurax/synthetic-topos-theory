#lang typed/racket

(require morg/math)

(provide
 (except-out (all-defined-out)
             big-op)
 (rename-out [big-op-1 big-op]))

(define-levels
  |.|
  unary
  $
  *
  binary
  relation
  /->
  ->
  big-op
  |,w|
  def-eq
  :
  /-
  |,|)

(define big-op-1 (make-level big-op))
