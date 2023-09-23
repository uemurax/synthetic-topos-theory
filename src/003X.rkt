#lang morg

(require "lib/article/proposition.rkt"
         "lib/article/proof.rkt"
         morg/math
         "lib/math/type-theory/tuple.rkt"
         "lib/math/topos-theory/type.rkt"
         "lib/math/type-theory/element.rkt"
         "lib/math/type-theory/directed.rkt"
         "lib/math/equiv.rkt"
         "lib/math/type-theory/etale.rkt"
         "lib/math/type-theory/universe-level.rkt")

(define T "T")
(define x "X")

@proposition[
  #:id (current-id)
  @paragraph{
    Let @(math T) be a base type theory.
    We work in @(math T).
    Then the point @(math ((*) . is-elem . Type))
    is coétale.
  }
  #:proof @proof[
    @paragraph{
      For any @(math (x . is-elem . Type)),
      we have
      @(math (((*) . hom . x)
              . equiv .
              x)),
      and thus @(math ((*) . hom . x))
      is in @(math (Etale zero)).
    }
  ]
]
