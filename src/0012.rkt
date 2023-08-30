#lang morg

(require "lib/article/proposition.rkt"
         "lib/article/proof.rkt"
         morg/math
         "lib/math/lex-cocomp.rkt"
         "lib/math/topos.rkt"
         "lib/math/logos.rkt"
         "lib/math/function.rkt"
         "lib/math/functor.rkt"
         "lib/math/category.rkt"
         "lib/math/equiv.rkt")

(define U "U")
(define X "X")

@proposition[
  #:id (current-id)
  @paragraph{
    Let @(math U) be a universe
    and let @(math X) be a @(math U)-topos.
    Then the functor
    @(math ((etale-embed (Sh . $ . X))
            . is-functor .
            (opposite (Sh . $ . X))
            ((Logos U) . coslice . (Sh . $ . X))))
    restricts to an equivalence
    @(math ((Sh . $ . X)
            . equiv .
            (Etale X))).
  }
  #:proof @proof[
    @paragraph{
      By definition.
    }
  ]
]
