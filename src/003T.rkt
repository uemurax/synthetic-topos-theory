#lang morg

(require "lib/article/proposition.rkt"
         "lib/article/proof.rkt"
         morg/math
         "lib/math/type-theory/function.rkt"
         "lib/math/type-theory/directed.rkt"
         "lib/math/type-theory/element.rkt"
         "lib/math/type-theory/etale.rkt"
         "lib/math/type-theory/universe-level.rkt"
         "lib/math/type-theory/blank.rkt"
         "lib/math/type-theory/category.rkt"
         "lib/math/type-theory/tuple.rkt")

(define T "T")
(define S "X")
(define a "a")
(define x "x")

@proposition[
  #:id (current-id)
  @paragraph{
    Let @(math T) be a base type theory.
    We work in @(math T).
    Let @(math S) be a topos
    and let @(math a) be a point of @(math S).
    Suppose that the type family
    @(math ((x . is-elem . S)
            . /-> .
            (a . hom . x)))
    is valued in @(math (Etale zero)).
    Then @(math a) is essential.
  }
  #:proof @proof[
    @paragraph{
      The morphism
      @(math ((blank . /-> . a)
              . is-morphism .
              (*) S))
      factors as
      @(math ((blank . /-> . (tuple a id))
              . is-morphism .
              (*)
              ((x . is-elem . S) . * . (a . hom . x))))
      followed by the first projection
      @(math (((x . is-elem . S) . * . (a . hom . x))
              . morphism .
              S)).
      The former is a left adjoint
      and thus essential by @ref["003R"].
      The latter is essentialy by @ref["003S"]
      and by the assumption that
      @(math (x . /-> . (a . hom . x)))
      is valued in @(math (Etale zero)).
      Thus, their composite is also essential.
    }
  ]
]
