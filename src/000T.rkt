#lang morg

(require "lib/article/lemma.rkt"
         "lib/article/proof.rkt"
         morg/math
         "lib/math/topos.rkt"
         "lib/math/logos.rkt"
         "lib/math/category.rkt"
         "lib/math/function.rkt"
         "lib/math/pullback.rkt"
         "lib/math/equiv.rkt")

(define U "U")
(define X "X")
(define Y "Y")
(define Z "Z")
(define f "f")
(define g "g")
(define a "a")
(define b "b")
(define F "F")
(define u "u")
(define s "s")

@lemma[
  #:id (current-id)
  @paragraph{
    Let @(math U) be a universe.
    Then étale morphisms in @(math (Topos U))
    has the left cancellation property.
    That is, for morphisms
    @(math (f . is-morphism . Y X))
    and @(math (g . is-morphism . Z Y)) in @(math (Topos U)),
    if @(math f) and @(math (f . comp . g)) are étale,
    then so is @(math g).
  }
  #:proof @proof[
    @paragraph{
      Let @(math X) be a @(math U)-topos,
      let @(math (a b . is-object* . (Sh . $ . X)))
      be objects,
      and let
      @(math (F
              . is-morphism .
              ((Sh . $ . X) . slice . a)
              ((Sh . $ . X) . slice . b)))
      be a morphism in @(math ((Logos U) . coslice . (Sh . $ . X))).
      By @ref["000I"],
      @(math F) is equivalent to the pullback functor
      @(math (pullback u))
      for some morphism @(math (u . is-morphism . b a)).
      Let @(math (s . is-object . ((Sh . $ . X) . slice . a)))
      be the object represented by @(math u).
      We have the equivalence
      @(math (((Sh . $ . X) . slice . b)
              . equiv .
              (((Sh . $ . X) . slice . a) . slice . s))).
      Then @ref["000P"] applies.
    }
  ]
]
