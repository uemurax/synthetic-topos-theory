#lang morg

(require "lib/article/exercise.rkt"
         morg/math
         "lib/math/logos.rkt"
         "lib/math/function.rkt"
         "lib/math/functor.rkt"
         "lib/math/category.rkt"
         "lib/math/equiv.rkt")

(define U "U")
(define V "V")
(define C "C")
(define A "A")

@exercise[
  #:id (current-id)
  @paragraph{
    Let @(math U) be a universe
    and let @(math V) be a universe
    greater than or equal to @(math U).
    Then the functor
    @(math ((C . /-> . ((enlarge V) C))
            . is-functor .
            (Logos U)
            (Logos V)))
    preserves étale morphisms.
    More precisely, for any @(math U)-logos @(math C)
    and any object @(math (A . is-object . C)),
    the embedding
    @(math ((C . slice . A)
            . functor .
            (((enlarge V) C) . slice . A)))
    induces an equivalence
    @(math (((enlarge V) (C . slice . A))
            . equiv .
            (((enlarge V) C) . slice . A)))
    under @(math (C . slice . A)).
  }
]
