#lang morg

(require morg/math
         "lib/math/type-theory/tuple.rkt"
         "lib/math/type-theory/sheaf.rkt")

(define X "X")

@section[
  #:id (current-id)
  #:title @%{Subtoposes and modalities}
  @paragraph{
    Having @ref["002Y"] in mind,
    we only consider @emph{subtoposes}
    of @(math (*)).
    Subtoposes of a general topos @(math X)
    are subtoposes of @(math (*))
    in the type theory of spaces in
    @(math (Sheaf X)).
  }
  (include-part "004H.rkt")
  @paragraph{
    We refer the reader to
    @ref["Rijke--Shulman--Spitters--2020-0000"]
    for the theory of
    @emph{modalities} in homotopy type theory.
  }
  (include-part "004I.rkt")
  (include-part "004J.rkt")
  (include-part "004K.rkt")
  (include-part "004L.rkt")
]
