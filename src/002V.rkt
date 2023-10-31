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
    The second axiom (@ref["005E"])
    is between the base type theory
    and the type theory of sheaves on a topos.
    It asserts that a topos is
    to some extent determined by
    the category of sheaves on it.
  }
  (include-part "005E.rkt")
  @paragraph{
    @ref["002S"] and @ref["005E"] are “too global”.
    For @ref["002S"], what we really want is that
    étale type families on a topos @(math S)
    are equivalent to
    global types in @(math (Sheaf S)).
    For @ref["005E"], what we really want is that
    a morphism between topose is an equivalence
    whenever its inverse image functor
    (introduced later in @ref["003I"])
    is an equivalence of categories.
    Both are addressed by
    the third axiom (@ref["002Y"])
    which relates type theories of spaces
    in different base type theories.
    It asserts that
    spaces over a topos @(math S) are equivalent to
    spaces in @(math (Sheaf S)).
    By this axiom,
    relative stuff
    (e.g. type family on a topos @(math S))
    is reduced to global stuff
    (e.g. global type) in @(math (Sheaf S)).
    Remember that @(math (Sheaf S))
    is again a base type theory
    so @ref["002S"] and @ref["005E"]
    are also assumed there.
  }
  (include-part "002W.rkt")
  (include-part "002X.rkt")
  (include-part "002U.rkt")
  (include-part "002Y.rkt")
]
