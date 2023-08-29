#lang morg

(require "lib/article/definition.rkt"
         "lib/index/notation.rkt"
         morg/math
         "lib/math/category.rkt"
         "lib/math/pullback.rkt"
         "lib/math/functor.rkt"
         "lib/math/product.rkt"
         "lib/math/etale.rkt"
         "lib/math/function.rkt")

(define C "C")
(define x "x")

@definition[
  #:id (current-id)
  #:indexes @list[
    @n-index[#:key "d"]{
      @(math (generic-elem x))
    }
  ]
  @paragraph{
    Let @(math C) be a category
    that has finite limits
    and let @(math (x . is-object . C)) be an object.
    Let @(math ((pullback x) . is-functor . C (C . slice . x)))
    denote the pullback functor along
    the morphism from @(math x) to the final object.
    We define a morphism in @(math (C . slice . x))
    @disp{
      @(math ((generic-elem x)
              . is-morphism .
              (*)
              ((pullback x) . $ . x)))
    }
    to be the one represented by the diagonal morphism
    @(math (x . morphism . (x . * . x)))
    in @(math C).
  }
]
