#lang morg

(require "lib/article/proposition.rkt"
         "lib/article/proof.rkt"
         morg/math
         "lib/math/topos.rkt"
         "lib/math/category.rkt"
         "lib/math/pullback.rkt"
         "lib/math/functor.rkt")

(define U "U")
(define X "X")
(define Y "Y")
(define f "f")

@proposition[
  #:id (current-id)
  @paragraph{
    Let @(math U) be a universe.
    Then, for any @(math U)-topos @(math X),
    the category
    @(math (Etale X)) has @(math U)-small colimits.
    Moreover, for any morphism
    @(math (f . is-morphism . X Y))
    in @(math (Topos U)),
    the pullback functor
    @(math ((pullback f)
            . is-functor .
            (Etale Y)
            (Etale X)))
    commutes with @(math U)-small colimits.
  }
  #:proof @proof[
    @paragraph{
      By @ref["0012"].
    }
  ]
]
