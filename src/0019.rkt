#lang morg

(require "lib/article/definition.rkt"
         "lib/index/notation.rkt"
         morg/math
         "lib/math/topos.rkt"
         "lib/math/functor.rkt"
         "lib/math/category.rkt")

(define U "U")
(define V "V")

@definition[
  #:id (current-id)
  #:indexes @list[
    @n-index[#:key "ShTopos"]{
      @(math (ShTopos U V))
    }
  ]
  @paragraph{
    Let @(math U) be a universe
    and let @(math V) be a universe
    strictly greater than @(math U).
    We define @(math (ShTopos U V))
    to be the full subcategory of
    @(math (Functor (opposite (Topos1 U)) V))
    spanned by the sheaves
    in the sense of @ref["0016"].
  }
]
