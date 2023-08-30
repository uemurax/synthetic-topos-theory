#lang morg

(require "lib/article/definition.rkt"
         "lib/index/notation.rkt"
         morg/math
         "lib/math/lex-cocomp.rkt"
         "lib/math/functor.rkt"
         "lib/math/category.rkt"
         "lib/math/function.rkt"
         "lib/math/id.rkt"
         "lib/math/pullback.rkt")

(define U "U")
(define V "V")
(define C "C")
(define x "x")

@definition[
  #:id (current-id)
  #:indexes @list[
    @n-index[#:key "E"]{
      @(math (etale-embed C))
    }
  ]
  @paragraph{
    Let @(math U) be a universe,
    let @(math V) be a universe
    strictly greater than @(math U),
    and let @(math C) be a @(math V)-small
    lex @(math U)-cocomplete category.
    We define a functor
    @disp{
      @(math ((etale-embed C)
              . is-functor .
              (opposite C)
              ((LexCocomp U V) . coslice . C)))
    }
    by @(math (((etale-embed C) . $ . x)
               . = .
               ((pullback x)
                . is-morphism .
                C
                (C . slice . x)))).
  }
]
