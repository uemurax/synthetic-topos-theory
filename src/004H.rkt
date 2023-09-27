#lang morg

(require "lib/article/definition.rkt"
         morg/math
         "lib/math/type-theory/tuple.rkt")

(define T "T")
(define X "X")

@definition[
  #:id (current-id)
  #:indexes @list[
    @index[#:key "subtopos"]{
      subtopos
    }
  ]
  @paragraph{
    Let @(math T) be a base type theory.
    We work in @(math T).
    We say a topos @(math X) is a
    @dfn{subtopos (of @(math (*)))}
    if the counit of the
    constant sheaf and global section adjunction for @(math X)
    is an equivalence.
  }
]
