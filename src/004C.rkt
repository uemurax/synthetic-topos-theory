#lang morg

(require morg/math
         "lib/math/topos.rkt"
         "lib/math/function.rkt")

(define X "X")

@section[
  #:id (current-id)
  #:title @%{Internal topos theory}
  @paragraph{
    Topos theory is
    @emph{relative} to a base logos.
    The topos theory we have presented
    is the topos theory relative
    to the category of types.
    For every topos @(math X),
    we can also develop the topos theory
    relative to @(math (Sh . $ . X))
    by understanding every word
    internally to @(math (Sh . $ . X)).
  }
  (include-part "004D.rkt")
  (include-part "004E.rkt")
]
