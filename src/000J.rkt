#lang morg

(require "lib/article/definition.rkt"
         "lib/index/notation.rkt"
         morg/math
         "lib/math/topos.rkt"
         "lib/math/logos.rkt"
         "lib/math/category.rkt"
         "lib/math/equiv.rkt")

(define U "U")

@definition[
  #:id (current-id)
  #:indexes @list[
    @n-index[#:key "Sh"]{
      @(math Sh)
    }
  ]
  @paragraph{
    Let @(math U) be a universe.
    We refer to the canonical equivalence
    @(math ((opposite (Topos U))
            . equiv .
            (Logos U)))
    as @(math Sh).
  }
]
