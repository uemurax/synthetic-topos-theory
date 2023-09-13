#lang morg

(require "lib/article/definition.rkt"
         "lib/index/notation.rkt"
         morg/math
         "lib/math/type-theory/universe-level.rkt"
         "lib/math/type-theory/type.rkt"
         "lib/math/type-theory/element.rkt"
         "lib/math/type-theory/function.rkt"
         "lib/math/type-theory/coproduct.rkt")

(define T "T")
(define T1 (T . _ . "1"))
(define T2 (T . _ . "2"))
(define i "i")
(define A "A")
(define B "B")
(define x "x")
(define a "a")
(define b "b")

@definition[
  #:id (current-id)
  #:indexes @list[
    @index[#:key "coproduct"]{
      coproduct
    }
    @n-index[#:key "coprod"]{
      @(math (coproduct x A (B . $ . x)))
    }
    @n-index[#:key "in"]{
      @(math (in a b))
    }
  ]
  @paragraph{
    Let @(math T1) be a type theory
    and let @(math T2) be a type theory
    internal to @(math T1).
    We work in @(math T2).
    Let @(math (is-Level i)),
    let @(math (A . is-Type . i)) in @(math T1),
    and let @(math ((B . $ . x) . is-Type . i))
    under assumption @(math (x . is-elem . A)).
    We say @(math T2) has
    the @dfn{coproduct of @(math B)}
    if the inductive type
    @disp{
      @(math ((coproduct x A (B . $ . x))
              . is-Type . i))
    }
    with the following constructors
    is constructible.
    @unordered-list[
      @list-item{
        Let @(math (a . is-elem . A))
        and let @(math (b . is-elem . (B . $ . a))).
        Then @(math ((in a b) . is-elem . (coproduct x A (B . $ . x)))).
      }
    ]
  }
]
