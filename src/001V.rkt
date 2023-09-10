#lang morg

(require "lib/article/rule.rkt"
         "lib/index/notation.rkt"
         morg/math
         "lib/math/type-theory/universe-level.rkt")

@rule[
  #:id (current-id)
  #:indexes @list[
    @n-index[#:key "Level"]{
      @(math Level)
    }
  ]
  @paragraph{
    @(math Level)
    is a judgment form.
  }
]
