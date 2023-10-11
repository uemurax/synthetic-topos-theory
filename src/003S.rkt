#lang morg

(require "lib/article/proposition.rkt"
         "lib/article/proof.rkt"
         morg/math
         "lib/math/type-theory/etale.rkt"
         "lib/math/type-theory/universe-level.rkt"
         "lib/math/type-theory/element.rkt"
         "lib/math/type-theory/category.rkt"
         "lib/math/type-theory/tuple.rkt"
         "lib/math/topos-theory/morphism.rkt"
         "lib/math/functor.rkt"
         "lib/math/type-theory/base.rkt"
         "lib/math/topos-theory/sheaf.rkt"
         "lib/math/type-theory/function.rkt")

(define T "T")
(define S "X")
(define S1 (S . _ . "1"))
(define S2 (S . _ . "2"))
(define x "x")
(define A "A")
(define B "B")

@proposition[
  #:id (current-id)
  @paragraph{
    Let @(math T) be a base type theory.
    We work in @(math T).
    Let @(math S1) be a topos
    and let
    @(math (S2
            . is-elem .
            (S1 . -> . (Etale zero)))).
    Then the first projection
    @(math (((x . is-elem . S1) . * . (S2 . $ . x))
            . morphism .
            S1))
    is essential.
  }
  #:proof @proof[
    @paragraph{
      Using @ref["002Y"],
      the claim is reduced to the case when
      @(math S1) is the terminal topos.
      It is thus enough to show that
      @(math ((constant-sheaf S)
              . is-functor .
              (universe zero)
              (Sheaf S zero)))
      has a left adjoint
      for every @(math (S . is-elem . (Etale zero))).
      Let @(math (A . is-elem . (universe zero)))
      correspond to @(math S)
      by @ref["002S"].
      By @ref["004W"],
      @(math (constant-sheaf S)) is equivalent to
      the constant-function functor
      @(math ((universe zero)
              . functor .
              (paren (A . -> . (universe zero))))).
      It has the left adjoint
      @(math (B
              . /-> .
              ((x . is-elem . A) . * . (B . $ . x)))).
    }
  ]
]
