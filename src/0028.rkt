#lang morg

(require morg/math)

(define T "T")
(define S "X")

@section[
  #:id (current-id)
  #:title @%{Type theory of sheaves}
  @paragraph{
    Let @(math T) be a type theory
    and let @(math S) be a topos
    in @(math T).
    We introduce the
    @emph{type theory of sheaves on @(math S)}.
    It is a type theory
    internal to @(math T).
  }
  (include-part "002K.rkt")
  (include-part "002G.rkt")
  (include-part "002H.rkt")
]
