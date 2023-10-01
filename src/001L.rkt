#lang morg

(require morg/math
         "lib/math/topos.rkt")

(define U "U")

@section[
  #:id (current-id)
  #:title @%{A universal property of @(math (Topos1 U))}
  @paragraph{
    The following observation is
    not directly used elsewhere
    but indicates that
    étale morphisms are the characteristic
    of topos theory
    and provides inspiration
    for the design of a type theory of toposes.
  }
  (include-part "001M.rkt")
  (include-part "001N.rkt")
]
