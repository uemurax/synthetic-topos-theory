#lang morg

(require "lib/article/proposition.rkt"
         "lib/article/proof.rkt"
         morg/math
         "lib/math/type-theory/element.rkt"
         "lib/math/type-theory/natural.rkt"
         (prefix-in lo: "lib/math/topos-theory/linear-order.rkt")
         "lib/math/type-theory/directed.rkt"
         "lib/math/type-theory/record.rkt")

(define T "T")
(define n "n")
(define A "A")

@proposition[
  #:id (current-id)
  @paragraph{
    Let @(math T) be a base type theory.
    We work in @(math T).
    Let @(math (n . is-elem . Natural)).
    Then the point
    @(math ((lo:free n) . is-elem . lo:LinearOrder))
    is coétale.
  }
  #:proof @proof[
    @paragraph{
      Let @(math (A . is-elem . lo:LinearOrder)).
      By @ref["004A"],
      the type @(math ((lo:free n) . hom . A))
      is equivalent to
      the type of increasing chains
      of points of @(math A)
      of length @(math n).
      That type is constructible
      from @(math (A . |.| . lo:Carrier))
      and @(math (A . |.| . lo:<=-symbol))
      by finite limits
      and thus étale.
    }
  ]
]
