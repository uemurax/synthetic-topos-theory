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
    preserves finite limits and
    @(math U)-small products.
  }
  #:proof @proof[
    @paragraph{
      This is because
      the Yoneda embedding
      preserves arbitrary limits.
    }
  ]
]
