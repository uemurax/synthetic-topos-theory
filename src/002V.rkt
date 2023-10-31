#lang morg

(require morg/math
         "lib/math/type-theory/sheaf.rkt")

(define S "X")

@section[
  #:id (current-id)
  #:title @%{Cross-theory axioms}
  @paragraph{
    We have introduced
    the type theory of spaces
    and the type theory of sheaves
    both of which are
    internal to a base type theory.
    Now we introduce some axioms
    that strongly tie these type theories together.
  }
  @paragraph{
    The first axiom (@ref["002S"])
    is between the base type theory
    and the type theory of spaces.
    It asserts that types in the base type theory
    are equivalent to étale spaces.
  }
  (include-part "002S.rkt")
  @paragraph{
    The second axiom (@ref["002Y"])
    relates type theories of spaces
    in different base type theories.
    It asserts that
    spaces over a topos @(math S) are equivalent to
    spaces in @(math (Sheaf S)).
  }
  (include-part "002W.rkt")
  (include-part "002X.rkt")
  (include-part "002U.rkt")
  (include-part "002Y.rkt")
  (include-part "005E.rkt")
]
