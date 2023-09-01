#lang morg

(require "lib/article/proposition.rkt"
         "lib/article/proof.rkt"
         morg/math
         "lib/math/topos.rkt"
         "lib/math/functor.rkt"
         "lib/math/category.rkt")

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
            (Functor (opposite (Topos1 U)) V)))
    factors through @(math (ShTopos U V)).
  }
  #:proof @proof[
    @paragraph{
      This is because
      representable presheaves preserve
      arbitrary limits.
    }
  ]
]
