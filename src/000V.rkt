#lang morg

(require "lib/article/definition.rkt"
         morg/math
         "lib/math/category.rkt"
         "lib/math/lex-cocomp.rkt"
         "lib/math/function.rkt"
         "lib/math/pullback.rkt"
         "lib/math/functor.rkt")

(define U "U")
(define V "V")
(define f "f")
(define C "C")
(define D "D")
(define x "x")

@definition[
  #:id (current-id)
  #:indexes @list[
    @index[#:key "etale morphism"]{
      étale morphism of lex @(math U)-cocomplete categories
    }
  ]
  @paragraph{
    Let @(math U) be a universe
    and let @(math V) be a universe
    strictly greater than @(math U).
    We say a morphism
    @(math (f . is-morphism . C D))
    in @(math (LexCocomp U V)) is
    @dfn{étale} if
    it is in the image of the functor
    @(math ((x . /-> . (pullback x))
            . is-functor .
            (opposite C)
            ((LexCocomp U V) . coslice . C))).
  }
]
