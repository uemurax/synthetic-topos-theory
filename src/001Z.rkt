#lang morg

(require "lib/article/rule.rkt"
         "lib/index/notation.rkt"
         morg/math
         "lib/math/type-theory/universe-level.rkt"
         "lib/math/type-theory/type.rkt")

(define i "i")

@rule[
  #:id (current-id)
  #:indexes @list[
    @n-index[#:key "Type"]{
      @(math (Type i))
    }
  ]
  @paragraph{
    We work in the core type theory.
    Let @(math (is-Level i)).
    Then @(math (Type i)) is a judgment form.
  }
]
