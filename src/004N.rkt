#lang morg

(require "lib/article/definition.rkt"
         "lib/index/notation.rkt"
         morg/math
         "lib/math/topos-theory/prop.rkt"
         "lib/math/type-theory/subtype.rkt"
         "lib/math/topos-theory/type.rkt"
         "lib/math/type-theory/truncated.rkt")

(define T "T")
(define X "X")

@definition[
  #:id (current-id)
  #:indexes @list[
    @index[#:key "topos of propositions"]{
      topos of propositions
    }
    @n-index[#:key "Prop"]{
      @(math Prop)
    }
  ]
  @paragraph{
    Let @(math T) be a base type theory.
    We work in @(math T).
    We define the
    @dfn{topos of propositions}
    @(math Prop)
    to be
    @(math (comprehension
            X Type
            (IsProp X))).
  }
]
