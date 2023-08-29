#lang morg

(require "lib/article/proposition.rkt"
         "lib/article/proof.rkt"
         morg/math
         "lib/math/topos.rkt")

(define U "U")

@proposition[
  #:id (current-id)
  @paragraph{
    Let @(math U) be a universe.
    Then étale morphisms in @(math (Topos U))
    are closed under pullback.
  }
  #:proof @proof[
    @paragraph{
      This is by definition.
    }
  ]
]
