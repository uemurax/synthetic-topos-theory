#lang morg

(require "lib/article/definition.rkt"
         "lib/index/notation.rkt"
         morg/math
         "lib/math/type-theory/tuple.rkt"
         "lib/math/topos-theory/subtopos.rkt")

(define T "T")
(define X "X")

@definition[
  #:id (current-id)
  #:indexes @list[
    @index[#:key "subtopos"]{
      subtopos
    }
    @n-index[#:key "SubTop"]{
      @(math Subtopos)
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
    We write @(math Subtopos)
    for the type of subtoposes.
  }
]
