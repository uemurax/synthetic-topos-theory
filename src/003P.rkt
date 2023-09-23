#lang morg

(require "lib/article/definition.rkt"
         "lib/index/notation.rkt"
         morg/math
         (prefix-in tex: morg/math/tex)
         "lib/math/type-theory/category.rkt"
         "lib/math/topos-theory/sheaf.rkt"
         "lib/math/topos-theory/morphism.rkt"
         "lib/math/functor.rkt"
         "lib/math/type-theory/universe-level.rkt"
         (prefix-in ess: "lib/math/topos-theory/essential.rkt"))

(define T "T")
(define S tex:Sigma)
(define S1 (S . _ . "1"))
(define S2 (S . _ . "2"))
(define f "f")

@definition[
  #:id (current-id)
  #:indexes @list[
    @index[#:key "essential morphism"]{
      essential morphism
    }
    @n-index[#:key "!"]{
      @(math (ess:left-adjoint f))
    }
  ]
  @paragraph{
    Let @(math T) be a base type theory.
    We work in @(math T).
    Let @(math S1) and @(math S2) be
    geometric theories.
    We say a morphism
    @(math (f . is-morphism . S1 S2))
    is @dfn{essential} if
    @(math ((inverse-image f)
            . is-functor .
            (Sheaf S2 zero)
            (Sheaf S1 zero)))
    has a left adjoint
    @(math (ess:left-adjoint f)).
  }
]
