#lang morg

(require "lib/article/proposition.rkt"
         "lib/article/proof.rkt"
         morg/math
         "lib/math/category.rkt"
         "lib/math/topos.rkt"
         "lib/math/function.rkt"
         "lib/math/logos.rkt"
         "lib/math/pullback.rkt")

(define U "U")
(define Y "Y")
(define X "X")
(define f "f")
(define a "a")

@proposition[
  #:id (current-id)
  @paragraph{
    Let @(math U) be a universe.
    Then a morphism @(math (f . is-morphism . Y X))
    in @(math (Topos U)) is étale if and only if
    @(math ((inverse-image f)
            . is-morphism .
            (Sh . $ . X)
            (Sh . $ . Y)))
    is equivalent in
    @(math ((Logos U) . coslice . (Sh . $ . X)))
    to @(math ((pullback a)
               . is-morphism .
               (Sh . $ . X)
               ((Sh . $ . X) . slice . a)))
    for some object @(math (a . is-object . (Sh . $ . X))).
  }
  #:proof @proof[
    @paragraph{
      By @ref["000G"].
    }
  ]
]
