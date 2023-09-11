#lang morg

(require "lib/article/definition.rkt"
         "lib/index/notation.rkt"
         morg/math
         "lib/math/type-theory/base.rkt"
         "lib/math/type-theory/type.rkt"
         "lib/math/type-theory/universe-level.rkt")

(define i "i")

@definition[
  #:id (current-id)
  #:indexes @list[
    @index[#:key "base type theory"]{
      base type theory
    }
    @n-index[#:key "U"]{
      @(math (universe i))
    }
  ]
  @paragraph{
    A @dfn{base type theory}
    is a type theory that has
    the unit type,
    pair types,
    identity types,
    function types,
    inductive types,
    and a univalent universe
    @(math ((universe i) . is-Type . (succ i)))
    that represents @(math (Type i))
    for every @(math (is-Level i)).
  }
]
