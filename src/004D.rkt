#lang morg

(require "lib/article/notation.rkt"
         "lib/index/notation.rkt"
         morg/math
         "lib/math/internal.rkt")

(define U "U")
(define X "X")
(define A "A")

@notation[
  #:id (current-id)
  #:indexes @list[
    @n-index[#:key "?"]{
      @(math (internal X A))
    }
  ]
  @paragraph{
    Let @(math U) be a universe
    and let @(math X) be a @(math U)-topos.
    If @(math A) is a construction
    in the category of types,
    then we write @(math (internal X A))
    for the same construction
    but performed in the category of sheaves on @(math X).
  }
]
