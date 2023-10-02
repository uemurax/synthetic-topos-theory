#lang morg

(require "lib/article/exercise.rkt"
         morg/math
         "lib/math/type-theory/sheaf.rkt"
         "lib/math/type-theory/space.rkt"
         "lib/math/type-theory/function.rkt"
         "lib/math/type-theory/etale.rkt"
         "lib/math/type-theory/base.rkt"
         "lib/math/type-theory/universe-level.rkt")

(define T "T")
(define X "X")
(define Z "Z")
(define i "i")

@exercise[
  #:id (current-id)
  @paragraph{
    Let @(math T) be a base type theory.
    We work in @(math T).
    Let @(math X) be a topos.
    Then the translation
    @(math (Z . /-> . (space->sheaf X Z)))
    from @(math Space) to @(math (Sheaf X))
    sends @(math (Etale i))
    to @(math (universe i))
    for every @(math (is-Level i))
    and preserves
    finite limits,
    products,
    function types whose domains are étale,
    finite colimits of étale types,
    and coproducts of étale types.
  }
]
