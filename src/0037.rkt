#lang morg

(require morg/math)

(define T "T")

@section[
  #:id (current-id)
  #:title @%{Quasi-directed type theory}
  @paragraph{
    Let @(math T) be a type theory.
    We want to turn the type theory of spaces in @(math T)
    into a @emph{directed type theory}.
    However, what we actually get is
    a @emph{quasi-}directed type theory.
    All types have hom types,
    but hom types are not necessarily well-behaved.
    For example, composition is not always defined.
  }
  (include-part "0038.rkt")
  (include-part "0039.rkt")
]
