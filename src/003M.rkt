#lang morg

(require "lib/article/exercise.rkt"
         morg/math
         "lib/math/type-theory/universe-level.rkt"
         "lib/math/topos-theory/morphism.rkt"
         "lib/math/type-theory/category.rkt"
         "lib/math/functor.rkt"
         "lib/math/topos-theory/sheaf.rkt")

(define T "T")
(define i "i")
(define S "X")
(define S1 (S . _ . "1"))
(define S2 (S . _ . "2"))
(define f "f")

@exercise[
  #:id (current-id)
  @paragraph{
    Let @(math T) be a base type theory.
    We work in @(math T).
    Let @(math (is-Level i)),
    let @(math S1) and @(math S2) be
    toposes,
    and let @(math (f . is-morphism . S1 S2))
    be a morphism.
    Then
    @(math ((direct-image f)
            . is-functor .
            (Sheaf S1 i)
            (Sheaf S2 i)))
    is a right adjoint of
    @(math ((inverse-image f)
            . is-functor .
            (Sheaf S2 i)
            (Sheaf S1 i))).
  }
]
