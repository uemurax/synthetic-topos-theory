#lang morg

(require "lib/article/definition.rkt"
         "lib/index/notation.rkt"
         morg/math
         (prefix-in tex: morg/math/tex)
         morg/eq-reasoning
         "lib/math/type-theory/universe-level.rkt"
         "lib/math/type-theory/category.rkt"
         "lib/math/topos-theory/morphism.rkt"
         "lib/math/functor.rkt"
         "lib/math/topos-theory/sheaf.rkt"
         "lib/math/equiv.rkt"
         "lib/math/type-theory/fiber.rkt"
         "lib/math/type-theory/tuple.rkt"
         "lib/math/type-theory/element.rkt"
         "lib/math/type-theory/function.rkt"
         "lib/math/type-theory/model.rkt"
         (prefix-in ty: "lib/math/type-theory/sheaf.rkt")
         "lib/math/type-theory/space.rkt"
         "lib/math/type-theory/etale.rkt"
         "lib/math/type-theory/base.rkt")

(define T "T")
(define i "i")
(define S tex:Sigma)
(define S1 (S . _ . "1"))
(define S2 (S . _ . "2"))
(define f "f")
(define y "y")
(define x "x")
(define S3 (Fiber . $* . f (generic-global-section S2)))

@definition[
  #:id (current-id)
  #:indexes @list[
    @index[#:key "direct image"]{
      direct image
    }
    @n-index[#:key "?"]{
      @(math (direct-image f))
    }
  ]
  @paragraph{
    Let @(math T) be a base type theory.
    We work in @(math T).
    Let @(math (is-Level i)),
    let @(math S1) and @(math S2) be
    geometric theories,
    and let @(math (f . is-morphism . S1 S2))
    be a morphism.
    We define the
    @dfn{direct image functor}
    @disp{
      @(math ((direct-image f)
              . is-functor .
              (Sheaf S1 i)
              (Sheaf S2 i)))
    }
    by the following composite.
    @disp{
      @eq-reasoning[
        @(math (Sheaf S1 i))
        @(math equiv-symbol) @%{fibrant replacement}
        @(math (Sheaf ((y . is-elem . S2) . * . (Fiber . $* . f y)) i))
        @(math equiv-symbol) @ref["003L"]
        @(math (Element (ty:Sheaf S2)
                        empty-context
                        (Sheaf S3 i)))
        @(math functor-symbol) @(math (global-section S3))
        @(math (Element (ty:Sheaf S2)
                        empty-context
                        (universe i)))
        @(math equiv-symbol) @ref["003G"]
        @(math (Sheaf S2 i))
      ]
    }
  }
]
