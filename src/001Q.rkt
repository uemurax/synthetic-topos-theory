#lang morg

(require "lib/article/definition.rkt"
         "lib/index/notation.rkt"
         morg/math
         "lib/math/topos.rkt"
         "lib/math/logos.rkt"
         "lib/math/classifying-topos.rkt"
         "lib/math/category.rkt"
         "lib/math/function.rkt")

(define U "U")
(define V "V")
(define X "X")

@definition[
  #:id (current-id)
  #:indexes @list[
    @index[#:key "generic object"]{
      generic @(math X)-object
    }
    @n-index[#:key "w"]{
      @(math (generic-object X))
    }
  ]
  @paragraph{
    Let @(math U) be a universe,
    let @(math V) be a universe
    strictly greater than @(math U),
    and let @(math X) be a @(math U)-topos.
    By adjointness,
    the identity on @(math X) corresponds to
    a global section
    @(math ((generic-object X)
            . is-global-section .
            (interpret X X)))
    in @(math ((enlarge V) (Sh . $ . X))).
    We call @(math (generic-object X))
    the @dfn{generic @(math X)-object}.
  }
]
