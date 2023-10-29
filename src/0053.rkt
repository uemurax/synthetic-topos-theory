#lang morg

(require "lib/article/definition.rkt"
         "lib/index/notation.rkt"
         morg/math
         "lib/math/topos-2.rkt"
         "lib/math/topos.rkt"
         "lib/math/category.rkt"
         "lib/math/functor.rkt"
         "lib/math/function.rkt"
         "lib/math/action.rkt"
         "lib/math/product.rkt"
         "lib/math/id.rkt")

(define U "U")
(define C "C")

@definition[
  #:id (current-id)
  #:indexes @list[
    @n-index[#:key "I"]{
      @(math cat->topos)
    }
  ]
  @paragraph{
    Let @(math U) be a universe.
    We define a functor
    @(math (cat->topos
            . is-functor .
            (Cat U)
            (Topos U)))
    by
    @(math ((cat->topos . $ . C)
            . = .
            (C . action-l . (*)))).
  }
]
