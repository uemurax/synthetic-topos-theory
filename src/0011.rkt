#lang morg

(require "lib/article/proposition.rkt"
         "lib/article/proof.rkt"
         morg/math
         "lib/math/lex-cocomp.rkt"
         "lib/math/functor.rkt"
         "lib/math/category.rkt")

(define U "U")
(define V "V")
(define C "C")

@proposition[
  #:id (current-id)
  @paragraph{
    Let @(math U) be a universe,
    let @(math V) be a universe
    strictly greater than @(math U),
    and let @(math C) be a @(math V)-small
    lex @(math U)-cocomplete category.
    Then the functor
    @(math ((etale-embed C)
            . is-functor .
            (opposite C)
            ((LexCocomp U V) . coslice . C)))
    preserves @(math U)-small limits.
  }
  #:proof @proof[
    @paragraph{
      Observe that limits in @(math (LexCocomp U V))
      are computed in the category of @(math V)-small categories.
      Then the claim is a consequence of descent.
    }
  ]
]
