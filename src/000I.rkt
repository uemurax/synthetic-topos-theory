#lang morg

(require "lib/article/proposition.rkt"
         "lib/article/proof.rkt"
         morg/math
         "lib/math/function.rkt"
         "lib/math/pullback.rkt"
         "lib/math/functor.rkt"
         "lib/math/category.rkt"
         "lib/math/lex-cocomp.rkt"
         "lib/math/product.rkt")

(define U "U")
(define V "V")
(define C "C")
(define x "x")
(define y "y")

@proposition[
  #:id (current-id)
  @paragraph{
    Let @(math U) be a universe,
    let @(math V) be a universe
    strictly greater than @(math U),
    and let @(math C) be a @(math V)-small
    lex @(math U)-cocomplete category.
    The functor
    @(math ((etale-embed C)
            . is-functor .
            (opposite C)
            ((LexCocomp U V) . coslice . C)))
    is fully faithful.
  }
  #:proof @proof[
    @paragraph{
      Let @(math (x y . is-object* . C)) be objects.
      By @ref["000D"],
      the category of morphisms
      @(math ((pullback y) . morphism . (pullback x)))
      in @(math ((LexCocomp U V) . coslice . C))
      is equivalent to
      the discrete category of morphisms
      @(math ((*) . morphism . ((pullback x) . $ . y)))
      in @(math (C . slice . x)).
      But the latter is equivalent to
      the discrete category of morphisms
      @(math (x . morphism . y)) in @(math C).
    }
  ]
]
