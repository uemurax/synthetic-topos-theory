#lang morg

(require "lib/article/definition.rkt"
         "lib/index/notation.rkt"
         morg/math
         "lib/math/topos-theory/type.rkt"
         "lib/math/type-theory/etale.rkt"
         "lib/math/type-theory/universe-level.rkt")

(define T "T")

@definition[
  #:id (current-id)
  #:indexes @list[
    @index[#:key "topos of types"]{
      topos of types
    }
    @n-index[#:key "Type"]{
      @(math Type)
    }
  ]
  @paragraph{
    Let @(math T) be a base type theory.
    We work in @(math T).
    We define the
    @dfn{topos of types} @(math Type)
    to be @(math (Etale zero)).
  }
]
