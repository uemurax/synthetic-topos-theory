#lang morg

(require "lib/article/definition.rkt"
         morg/math
         "lib/math/topos.rkt"
         "lib/math/category.rkt"
         "lib/math/function.rkt"
         "lib/math/functor.rkt"
         "lib/math/power.rkt")

(define U "U")
(define V "V")
(define A "A")
(define B "B")
(define C "C")

@definition[
  #:id (current-id)
  #:indexes @list[
    @index[#:key "categorically fibrant object"]{
      categorically fibrant object
    }
    @index[#:key "categorical fibration"]{
      categorical fibration
    }
  ]
  @paragraph{
    Let @(math U) be a universe
    and let @(math V) be a universe
    strictly greater than @(math U).
    We say an object
    @(math (A . is-object . (ShTopos U V)))
    is @dfn{categorically fibrant}
    if the functor
    @(math ((C . /-> . (C . power . A))
            . is-functor .
            (opposite (Cat U))
            (ShTopos U V)))
    preserves @(math U)-small limits.
    More generally,
    we say a morphism
    @(math (B . morphism . A))
    in @(math (ShTopos U V))
    is a @dfn{categorical fibration}
    if the functor
    @(math ((C . /-> . (C . power . B))
            . is-functor .
            (opposite (Cat U))
            ((ShTopos U V) . slice . A)))
    preserves @(math U)-small limits.
  }
]
