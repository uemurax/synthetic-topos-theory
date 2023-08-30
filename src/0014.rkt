#lang morg

(require "lib/article/proposition.rkt"
         "lib/article/proof.rkt"
         morg/math
         "lib/math/topos.rkt"
         "lib/math/functor.rkt"
         "lib/math/category.rkt")

(define U "U")
(define X "X")

@proposition[
  #:id (current-id)
  @paragraph{
    Let @(math U) be a universe
    and let @(math X) be a @(math U)-topos.
    Then the inclusion
    @(math ((Etale X)
            . functor .
            ((Topos U) . slice . X)))
    preserves @(math U)-small colimits.
  }
  #:proof @proof[
    @paragraph{
      By @ref["0011"].
    }
  ]
]
