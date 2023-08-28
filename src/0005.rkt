#lang morg

(require "lib/article/definition.rkt"
         "lib/index/notation.rkt"
         morg/math
         "lib/math/topos.rkt"
         "lib/math/logos.rkt"
         "lib/math/category.rkt")

(define U "U")

@definition[
  #:id (current-id)
  #:indexes @list[
    @index[#:key "U-topos"]{
      @(math U)-topos
    }
    @n-index[#:key "Topos"]{
      @(math (Topos U))
    }
  ]
  @paragraph{
    Let @(math U) be a universe.
    The @math{2}-category @(math (Topos U)) of
    @dfn{@(math U)-toposes} is defined to be
    @(math (opposite (Logos U))).
  }
]
