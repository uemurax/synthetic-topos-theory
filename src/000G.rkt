#lang morg

(require "lib/article/proposition.rkt"
         "lib/article/proof.rkt"
         morg/math
         "lib/math/category.rkt"
         "lib/math/lex-cocomp.rkt"
         "lib/math/pullback.rkt")

(define U "U")
(define V "V")
(define C "C")
(define x "x")
(define F "F")

@proposition[
  #:id (current-id)
  @paragraph{
    Let @(math U) be a universe,
    let @(math V) be a universe
    strictly greater than @(math U),
    let @(math C) be a @(math V)-small lex @(math U)-cocomplete category,
    and let @(math (x . is-object . C)) be an object.
    Let @(math (F . is-morphism . (free-lex-cocomp-pt U) C))
    denote the morphism of lex @(math U)-cocomplete categories
    corresponding to @(math x).
    Then @(math ((pullback x) . is-morphism . C (C . slice . x)))
    is the pushout in @(math (LexCocomp U V))
    of @(math ((pullback generic-object)
               . is-morphism .
               (free-lex-cocomp-pt U)
               ((free-lex-cocomp-pt U) . slice . generic-object)))
    along @(math F).
  }
  #:proof @proof[
    @paragraph{
      One can check the universal property of the pushout
      using @ref["000D"].
    }
  ]
]
