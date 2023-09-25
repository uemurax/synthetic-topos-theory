#lang morg

(require "lib/article/definition.rkt"
         morg/math
         "lib/math/topos-theory/type.rkt"
         "lib/math/type-theory/tuple.rkt")

(define T "T")

@definition[
  #:id (current-id)
  #:indexes @list[
    @index[#:key "finitely presented point"]{
      finitely presented point
    }
  ]
  @paragraph{
    Let @(math T) be a base type theory.
    We work in type theory of spaces in @(math T).
    We say a point of @(math Type)
    is @dfn{finitely presented}
    if it is constructed from @(math (*))
    by finite colimits.
  }
]
