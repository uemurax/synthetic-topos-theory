#lang morg

(require "lib/article/definition.rkt"
         "lib/index/notation.rkt"
         morg/math
         "lib/math/type-theory/natural.rkt"
         "lib/math/type-theory/element.rkt"
         "lib/math/type-theory/space.rkt"
         "lib/math/type-theory/interval.rkt")

(define T "T")
(define n "n")

@definition[
  #:id (current-id)
  #:indexes @list[
    @n-index[#:key "D"]{
      @(math (std-simplex n))
    }
  ]
  @paragraph{
    Let @(math T) be a base type theory.
    We work in the type theory of
    spaces in @(math T).
    Let @(math (n . is-elem . Natural)).
    We define @(math ((std-simplex n) . is-elem . Topos))
    to be the type of
    (non-strictly) increasing sequences
    in @(math interval) of length @(math n).
  }
]
