#lang morg

(require "lib/article/proposition.rkt"
         "lib/article/proof.rkt"
         morg/math
         "lib/math/topos.rkt"
         "lib/math/category.rkt"
         "lib/math/function.rkt"
         "lib/math/equiv.rkt")

(define U "U")
(define X "X")
(define a "a")
(define s "s")
(define u "u")
(define b "b")

@proposition[
  #:id (current-id)
  @paragraph{
    Let @(math U) be a universe.
    Then étale morphisms in @(math (Topos U))
    are closed under composition.
  }
  #:proof @proof[
    @paragraph{
      Let @(math X) be a @(math U)-topos,
      let @(math (a . is-object . (Sh . $ . X))) be an object,
      and let @(math (s . is-object . ((Sh . $ . X) . slice . a)))
      be an object.
      Let @(math (u . is-morphism . b a))
      denote the morphism that represents @(math s).
      We have the equivalence
      @(math ((((Sh . $ . X) . slice . a) . slice . s)
              . equiv .
              ((Sh . $ . X) . slice . b))).
      Then @ref["000P"] applies.
    }
  ]
]
