#lang morg

(require "lib/article/proposition.rkt"
         "lib/article/proof.rkt"
         morg/math
         "lib/math/topos.rkt"
         "lib/math/category.rkt")

(define U "U")

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
  }
  #:proof @proof[
    @paragraph{
      By @ref["000I"].
    }
  ]
]
