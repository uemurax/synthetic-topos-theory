#lang morg

(require "lib/article/definition.rkt"
         morg/math
         "lib/math/category.rkt"
         "lib/math/functor.rkt"
         "lib/math/topos.rkt")

(define U "U")
(define V "V")
(define A "A")

@definition[
  #:id (current-id)
  #:indexes @list[
    @index[#:key "sheaf"]{
      sheaf on @(math (Topos1 U))
    }
  ]
  @paragraph{
    Let @(math U) be a universe
    and let @(math V) be a universe
    strictly greater than @(math U).
    We say a presheaf
    @(math (A
            . is-functor .
            (opposite (Topos1 U))
            V))
    is a @dfn{sheaf} if
    it takes étale colimits in @(math (Topos1 U))
    to limits in @(math V).
  }
]
