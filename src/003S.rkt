#lang morg

(require "lib/article/exercise.rkt"
         morg/math
         "lib/math/type-theory/model.rkt"
         "lib/math/type-theory/etale.rkt"
         "lib/math/type-theory/universe-level.rkt"
         "lib/math/type-theory/space.rkt"
         "lib/math/type-theory/element.rkt"
         "lib/math/type-theory/category.rkt"
         "lib/math/type-theory/tuple.rkt"
         "lib/math/type-theory/function.rkt")

(define T "T")
(define S "X")
(define S1 (S . _ . "1"))
(define S2 (S . _ . "2"))
(define x "x")

@exercise[
  #:id (current-id)
  @paragraph{
    Let @(math T) be a base type theory.
    We work in @(math T).
    Let @(math S1) be a topos
    and let
    @(math (S2
            . is-elem .
            (Element Space
                     (x . is-elem . S1)
                     (Etale zero)))).
    Then the first projection
    @(math (((x . is-elem . S1) . * . (S2 . $ . x))
            . morphism .
            S1))
    is essential.
  }
]
