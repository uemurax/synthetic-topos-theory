#lang morg

(require "lib/article/definition.rkt"
         morg/math
         "lib/math/type-theory/space.rkt")

(define T "T")

@definition[
  #:id (current-id)
  #:indexes @list[
    @index[#:key "topos"]{
      topos
    }
  ]
  @paragraph{
    Let @(math T) be a type theory.
    We work in @(math T).
    A @dfn{topos}
    is a closed petit type in @(math Space).
  }
]
