#lang morg

(require "lib/article/definition.rkt"
         morg/math
         "lib/math/type-theory/directed.rkt"
         "lib/math/type-theory/etale.rkt"
         "lib/math/type-theory/universe-level.rkt"
         "lib/math/type-theory/function.rkt"
         "lib/math/type-theory/element.rkt")

(define T "T")
(define X "X")
(define a "a")
(define x "x")

@definition[
  #:id (current-id)
  #:indexes @list[
    @index[#:key "coetale point"]{
      coétale point
    }
  ]
  @paragraph{
    Let @(math T) be a base type theory.
    We work in the type theory of spaces in @(math T).
    Let @(math X) be a topos.
    We say a point @(math (a . is-elem . X))
    is @dfn{coétale} if
    the type family
    @(math ((x . is-elem . X)
            . /-> .
            (a . hom . x)))
    is valued in @(math (Etale zero)).
  }
]
