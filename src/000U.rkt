#lang morg

(require "lib/article/proposition.rkt"
         "lib/article/proof.rkt"
         morg/math
         "lib/math/topos.rkt"
         "lib/math/category.rkt"
         "lib/math/product.rkt")

(define U "U")
(define X "X")
(define Y "Y")
(define f "f")

@proposition[
  #:id (current-id)
  @paragraph{
    Let @(math U) be a universe.
    Then étale morphisms in @(math (Topos U))
    are closed under diagonal.
    That is, if a morphism
    @(math (f . is-morphism . Y X))
    in @(math (Topos U)) is étale,
    then so is the diagonal morphism
    @(math (Y . morphism . (Y . (f . _*_ . f) . Y))).
  }
  #:proof @proof[
    @paragraph{
      The diagonal morphism in question is
      a section of the first (or second)
      projection @(math ((Y . (f . _*_ . f) . Y) . morphism . Y)).
      By @ref["000T"] and @ref["000Q"],
      it suffices to show that
      the first projection is étale,
      but this follows from @ref["000S"].
    }
  ]
]
