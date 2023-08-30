#lang morg

(require "lib/article/definition.rkt"
         morg/math
         "lib/math/category.rkt"
         "lib/math/topos.rkt")

(define U "U")
(define Y "Y")
(define X "X")
(define f "f")

@definition[
  #:id (current-id)
  #:indexes @list[
    @index[#:key "etale morphism"]{
      étale morphism of toposes
    }
  ]
  @paragraph{
    Let @(math U) be a universe.
    We say a morphism
    @(math (f . is-morphism . Y X))
    in @(math (Topos U)) is @dfn{étale} if
    there exists a (necessarily unique by @ref["000M"])
    pullback square from @(math f) to
    @(math (object-classifier-pr
            . is-morphism .
            object-classifier-pt
            object-classifier)).
  }
]
