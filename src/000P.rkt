#lang morg

(require "lib/article/proposition.rkt"
         "lib/article/proof.rkt"
         morg/math
         "lib/math/category.rkt"
         "lib/math/topos.rkt"
         "lib/math/function.rkt"
         "lib/math/logos.rkt")

(define U "U")
(define Y "Y")
(define X "X")
(define f "f")

@proposition[
  #:id (current-id)
  @paragraph{
    Let @(math U) be a universe.
    Then a morphism @(math (f . is-morphism . Y X))
    in @(math (Topos U)) is étale if and only if
    the morphism of lex @(math U)-cocomplete categories
    @(math ((inverse-image f)
            . is-morphism .
            (Sh . $ . X)
            (Sh . $ . Y)))
    is étale.
  }
  #:proof @proof[
    @paragraph{
      By @ref["000G"].
    }
  ]
]
