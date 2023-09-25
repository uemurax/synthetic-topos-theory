#lang morg

(require "lib/article/proposition.rkt"
         "lib/article/proof.rkt"
         morg/math
         "lib/math/type-theory/etale.rkt"
         "lib/math/type-theory/universe-level.rkt")

(define T "T")
(define X "X")

@proposition[
  #:id (current-id)
  @paragraph{
    Let @(math T) be a base type theory.
    We work in the type theory of spaces in @(math T).
    Let @(math X) be a topos.
    Then coétale points of @(math X)
    are closed under
    finite colimits that exist in @(math X).
  }
  #:proof @proof[
    @paragraph{
      This is because
      @(math (Etale zero))
      is closed under finite limits.
    }
  ]
]
