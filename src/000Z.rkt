#lang morg

(require "lib/article/proposition.rkt"
         "lib/article/proof.rkt"
         morg/math
         "lib/math/topos.rkt"
         "lib/math/logos.rkt"
         "lib/math/functor.rkt"
         "lib/math/category.rkt"
         "lib/math/equiv.rkt"
         "lib/math/function.rkt")

(define U "U")
(define X "X")

@proposition[
  #:id (current-id)
  @paragraph{
    Let @(math U) be a universe.
    Then @(math object-classifier)
    represents the functor
    @(math (Sh
            . is-functor .
            (opposite (Topos U))
            (Logos U))).
    That is, we have a natural equivalence
    @(math (((Hom (Topos U)) . $* . X object-classifier)
            . equiv .
            (Sh . $ . X))).
  }
  #:proof @proof[
    @paragraph{
      This is by definition.
    }
  ]
]
