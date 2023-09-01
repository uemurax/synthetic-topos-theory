#lang morg

(require "lib/article/proposition.rkt"
         "lib/article/proof.rkt"
         morg/math
         "lib/math/topos.rkt"
         "lib/math/functor.rkt")

(define U "U")
(define V "V")

@proposition[
  #:id (current-id)
  @paragraph{
    Let @(math U) be a universe
    and let @(math V) be a universe
    strictly greater than @(math U).
    Then the Yoneda embedding
    @(math ((Topos1 U)
            . functor .
            (ShTopos U V)))
    takes étale colimits to colimits.
  }
  #:proof @proof[
    @paragraph{
      This follows from the Yoneda lemma
      and the definition of sheaves on @(math (Topos1 U)).
    }
  ]
]
