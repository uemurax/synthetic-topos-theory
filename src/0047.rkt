#lang morg

(require "lib/article/notation.rkt"
         "lib/index/notation.rkt"
         morg/math
         "lib/math/topos-theory/morphism.rkt"
         "lib/math/functor.rkt"
         "lib/math/type-theory/base.rkt"
         "lib/math/type-theory/universe-level.rkt"
         "lib/math/topos-theory/sheaf.rkt"
         (prefix-in ess: "lib/math/topos-theory/essential.rkt")
         "lib/math/type-theory/function.rkt"
         "lib/math/type-theory/tuple.rkt")

(define T "T")
(define X "X")
(define a "a")

@notation[
  #:id (current-id)
  #:indexes @list[
    @n-index[#:key "e"]{
      @(math (ess:corepr-object a))
    }
  ]
  @paragraph{
    Let @(math T) be a base type theory.
    We work in @(math T).
    Let @(math X) be a topos
    and let @(math a) be an
    essential point of @(math X).
    By definition,
    the inverse image functor
    @(math ((inverse-image a)
            . is-functor .
            (Sheaf X zero)
            (universe zero)))
    has the left adjoint @(math (ess:left-adjoint a))
    and thus corepresentable by
    @(math ((ess:left-adjoint a) . $ . (*))).
    We refer to @(math ((ess:left-adjoint a) . $ . (*)))
    as @(math (ess:corepr-object a)).
  }
]
