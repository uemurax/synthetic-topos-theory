#lang morg

(require "lib/article/definition.rkt"
         "lib/index/notation.rkt"
         morg/math
         "lib/math/topos.rkt"
         "lib/math/logos.rkt"
         "lib/math/equiv.rkt"
         "lib/math/category.rkt"
         "lib/math/function.rkt")

(define U "U")
(define f "f")

@definition[
  #:id (current-id)
  #:indexes @list[
    @index[#:key "inverse image"]{
      inverse image
    }
    @n-index[#:key "f^*"]{
      @(math (inverse-image f))
      (inverse image)
    }
  ]
  @paragraph{
    Let @(math U) be a universe.
    The action of
    @(math (Sh
            . is-equiv .
            (opposite (Topos U))
            (Logos U)))
    on morphisms is also denoted by
    @(math (f . /-> . (inverse-image f))).
    We call @(math (inverse-image f))
    the @dfn{inverse image}
    of a morphism @(math f) of @(math U)-toposes.
  }
]
