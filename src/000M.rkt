#lang morg

(require "lib/article/proposition.rkt"
         "lib/article/proof.rkt"
         morg/math
         "lib/math/topos.rkt"
         "lib/math/category.rkt"
         "lib/math/function.rkt"
         "lib/math/functor.rkt")

(define U "U")
(define X "X")

@proposition[
  #:id (current-id)
  @paragraph{
    Let @(math U) be a universe.
    Then the morphism
    @(math (object-classifier-pr
            . is-morphism .
            object-classifier-pt
            object-classifier))
    in @(math (Topos U))
    satisfies directed univalence.
    That is,
    for any object @(math (X . is-object . (Topos U))),
    the functor
    @disp{
      @(math (((Hom (Topos U)) . $* . X object-classifier)
              . functor .
              ((Topos U) . slice . X)))
    }
    defined by the pullback of the left fibration
    @(math (object-classifier-pr
            . is-morphism .
            object-classifier-pt
            object-classifier))
    is fully faithful.
  }
  #:proof @proof[
    @paragraph{
      By @ref["000I"].
    }
  ]
]
