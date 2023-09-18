#lang morg

(require morg/math)

(define T "T")

@section[
  #:id (current-id)
  #:title @%{Type theory of spaces}
  @paragraph{
    Given a type theory @(math T),
    we introduce the
    @emph{type theory of spaces in @(math T)}.
    It is a type theory internal to @(math T).
  }
  (include-part "002B.rkt")
  (include-part "0029.rkt")
  (include-part "002A.rkt")
  (include-part "002S.rkt")
]
