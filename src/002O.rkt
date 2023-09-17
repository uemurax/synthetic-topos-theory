#lang morg

(require morg/math)

(define T "T")

@section[
  #:id (current-id)
  #:title @%{Geometric theories}
  @paragraph{
    Let @(math T) be a type theory.
    The type theory of spaces in @(math T)
    also acts as
    a @emph{logical framework for geometric theories}.
  }
  (include-part "002D.rkt")
  (include-part "002E.rkt")
]
