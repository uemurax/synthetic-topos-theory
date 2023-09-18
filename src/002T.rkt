#lang morg

(require "lib/article/notation.rkt"
         "lib/index/notation.rkt"
         morg/math
         "lib/math/type-theory/model.rkt"
         "lib/math/type-theory/global-section.rkt"
         "lib/math/type-theory/self.rkt"
         "lib/math/type-theory/category.rkt")

(define T "T")
(define T1 (T . _ . "1"))
(define T2 (T . _ . "2"))
(define T3 (T . _ . "3"))

@notation[
  #:id (current-id)
  #:indexes @list[
    @n-index[#:key "Glob"]{
      @(math (Globalization T1 T2))
    }
    @index[#:key "globalization"]{
      globalization
    }
  ]
  @paragraph{
    Let @(math T1) be a base type theory,
    let @(math T2) be a type theory
    internal to @(math T1),
    and let @(math T3) be a type theory
    internal to @(math T2).
    We work in @(math T1).
    Since the translation
    @(math ((GlobalSection T2)
            . is-morphism .
            T2 Self))
    is a right adjoint,
    it preserves arbitrary algebraic structures.
    In particular,
    it takes @(math T3)
    to a type theory internal to @(math T1)
    which we refer to as
    @(math (Globalization T2 T3))
    and call the @dfn{globalization of @(math T3)}.
  }
]
