#lang morg

(require "lib/article/proposition.rkt"
         "lib/article/proof.rkt"
         morg/math
         "lib/math/topos.rkt"
         "lib/math/product.rkt"
         "lib/math/equiv.rkt"
         "lib/math/function.rkt"
         "lib/math/category.rkt")

(define U "U")
(define X "X")

@proposition[
  #:id (current-id)
  @paragraph{
    Let @(math U) be a universe.
    Then all the identity morphisms in @(math (Topos U))
    are étale.
  }
  #:proof @proof[
    @paragraph{
      Let @(math X) be a @(math U)-topos.
      We have the equivalence
      @(math ((Sh . $ . X)
              . equiv .
              ((Sh . $ . X) . slice . (*)))).
      Then @ref["000P"] applies.
    }
  ]
]
