#lang morg

(require "lib/article/definition.rkt"
         "lib/index/notation.rkt"
         morg/math
         "lib/math/type-theory/universe-level.rkt"
         "lib/math/type-theory/coproduct.rkt"
         "lib/math/type-theory/global-section.rkt"
         "lib/math/type-theory/function.rkt"
         "lib/math/type-theory/element.rkt"
         "lib/math/type-theory/base.rkt"
         "lib/math/type-theory/model.rkt"
         "lib/math/type-theory/def-eq.rkt"
         "lib/math/type-theory/blank.rkt"
         "lib/math/type-theory/tuple.rkt")

(define T "T")
(define T1 (T . _ . "1"))
(define T2 (T . _ . "2"))
(define i "i")
(define Cst (Constant T2))
(define A "A")

@definition[
  #:id (current-id)
  #:indexes @list[
    @n-index[#:key "C"]{
      @(math (Constant T))
    }
  ]
  @paragraph{
    Let @(math T1) be a base type theory
    and let @(math T2) be a type theory
    internal to @(math T1).
    We work in @(math T1).
    Suppose that @(math T2) has the unit type
    and coproducts.
    Let @(math (is-Level i)).
    We define a function
    @disp{
      @(math (Cst
              . is-elem .
              ((universe i)
               . -> .
               (Type T2 empty-context i))))
    }
    by @(math ((Cst . $ . A)
               . def-eq .
               (coproduct blank A (*))))
  }
]
