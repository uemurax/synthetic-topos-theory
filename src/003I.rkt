#lang morg

(require "lib/article/definition.rkt"
         "lib/index/notation.rkt"
         morg/math
         "lib/math/type-theory/universe-level.rkt"
         "lib/math/topos-theory/morphism.rkt"
         "lib/math/type-theory/category.rkt"
         "lib/math/functor.rkt"
         "lib/math/topos-theory/sheaf.rkt")

(define T "T")
(define S "X")
(define S1 (S . _ . "1"))
(define S2 (S . _ . "2"))
(define f "f")
(define i "i")

@definition[
  #:id (current-id)
  #:indexes @list[
    @index[#:key "inverse imgae"]{
      inverse image
    }
    @n-index[#:key "*"]{
      @(math (inverse-image f))
    }
  ]
  @paragraph{
    Let @(math T) be a base type theory.
    We work in @(math T).
    Let @(math (is-Level i)),
    let @(math S1) and @(math S2)
    be toposes,
    and let @(math (f . is-morphism . S1 S2))
    be a morphism.
    The @dfn{inverse image functor}
    @disp{
      @(math ((inverse-image f)
              . is-functor .
              (Sheaf S2 i)
              (Sheaf S1 i)))
    }
    is defined by precomposition with @(math f).
  }
]
