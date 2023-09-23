#lang morg

(require "lib/article/definition.rkt"
         "lib/index/notation.rkt"
         morg/math
         morg/eq-reasoning
         "lib/math/type-theory/universe-level.rkt"
         "lib/math/topos-theory/morphism.rkt"
         "lib/math/functor.rkt"
         "lib/math/topos-theory/sheaf.rkt"
         "lib/math/type-theory/base.rkt"
         "lib/math/equiv.rkt"
         "lib/math/type-theory/model.rkt"
         (prefix-in ty: "lib/math/type-theory/sheaf.rkt")
         (prefix-in ty: "lib/math/type-theory/global-section.rkt"))

(define T "T")
(define S "X")
(define i "i")

@definition[
  #:id (current-id)
  #:indexes @list[
    @index[#:key "global section"]{
      global section
    }
    @n-index[#:key "?"]{
      @(math (global-section S))
    }
    @index[#:key "constant sheaf"]{
      constant sheaf
    }
    @n-index[#:key "?"]{
      @(math (constant-sheaf S))
    }
  ]
  @paragraph{
    Let @(math T) be a type theory.
    We work in @(math T).
    Let @(math (is-Level i))
    and let @(math S) be a topos.
    We define the
    @dfn{global section functor}
    @disp{
      @(math ((global-section S)
              . is-functor .
              (Sheaf S i)
              (universe i)))
    }
    by the following composite.
    @disp{
      @eq-reasoning[
        @(math (Sheaf S i))
        @(math equiv-symbol) @ref["003G"]
        @(math (Element (ty:Sheaf S) empty-context (universe i)))
        @(math functor-symbol) @(math (ty:GlobalSection (ty:Sheaf S)))
        @(math (universe i))
      ]
    }
    By @ref["002R"],
    @(math (global-section S))
    has a left adjoint
    which we call the
    @dfn{constant sheaf functor}
    and is denoted by
    @(math (constant-sheaf S)).
  }
]
