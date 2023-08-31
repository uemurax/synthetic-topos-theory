#lang morg

(require "lib/article/definition.rkt"
         "lib/index/notation.rkt"
         morg/math
         "lib/math/topos.rkt")

(define U "U")

@definition[
  #:id (current-id)
  #:indexes @list[
    @n-index[#:key "Topos1"]{
      @(math (Topos1 U))
    }
  ]
  @paragraph{
    Let @(math U) be a universe.
    We define @(math (Topos1 U))
    to be the @math{1}-categorical core of
    @(math (Topos U)).
  }
]
