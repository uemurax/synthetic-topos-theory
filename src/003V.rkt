#lang morg

@section[
  #:id (current-id)
  #:title @%{The topos of types}
  @paragraph{
    We take a close look at
    the simplest and most important topos,
    the @emph{topos of types}.
  }
  (include-part "003W.rkt")
  @paragraph{
    In classical topos theory,
    the topos of types is also called
    the @emph{object classifier},
    and its category of sheaves
    is the category of presheaves
    on the free lex category over one object.
    In particular,
    every object in the
    free lex category over one object
    induces an essential point
    of the topos of types.
    We construct those essential points
    @emph{synthetically}.
  }
  (include-part "003X.rkt")
  (include-part "003Y.rkt")
  (include-part "003Z.rkt")
  (include-part "0040.rkt")
  (include-part "0041.rkt")
]
