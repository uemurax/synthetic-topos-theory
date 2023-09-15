#lang morg

(require "lib/article/definition.rkt"
         "lib/index/notation.rkt"
         morg/math
         "lib/math/type-theory/universe-level.rkt")

@definition[
  #:id (current-id)
  #:indexes @list[
    @n-index[#:key "1"]{
      @(math one)
    }
  ]
  @paragraph{
    We define @(math (is-Level one))
    to be @(math (succ zero)).
  }
]
