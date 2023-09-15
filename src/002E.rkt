#lang morg

(require "lib/article/definition.rkt"
         morg/math
         "lib/math/type-theory/space.rkt")

(define T "T")

@definition[
  #:id (current-id)
  #:indexes @list[
    @index[#:key "geometric theory"]{
      geometric theory
    }
  ]
  @paragraph{
    Let @(math T) be a type theory.
    We work in @(math T).
    A @dfn{geometric theory}
    is a closed petit type in @(math Space).
  }
]
