#lang morg

(require "lib/article/proposition.rkt"
         "lib/article/proof.rkt"
         morg/math
         "lib/math/logos.rkt"
         "lib/math/functor.rkt"
         "lib/math/function.rkt"
         "lib/math/lex-cocomp.rkt"
         "lib/math/category.rkt")

(define U "U")
(define V "V")
(define C "C")
(define I "I")
(define A "A")
(define B "B")

@proposition[
  #:id (current-id)
  @paragraph{
    Let @(math U) be a universe
    and let @(math V) be a universe
    greater than or equal to @(math U).
    Then the functor
    @(math ((C . /-> . ((enlarge V) C))
            . is-functor .
            (Logos U)
            (Logos V)))
    takes étale limits in @(math (Logos U))
    to étale limits in @(math (Logos V)).
  }
  #:proof @proof[
    @paragraph{
      Let @(math C) be a @(math U)-logos,
      let @(math I) be a @(math U)-small category,
      and let @(math (A . is-functor . I C))
      be a functor.
      Let @(math (B . is-object . C))
      denote the colimit of @(math A).
      By @ref["0011"],
      the étale limit of the diagram induced by @(math A)
      is @(math (C . slice . B)).
      Then apply @ref["001G"].
    }
  ]
]
