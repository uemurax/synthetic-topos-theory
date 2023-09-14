#lang morg

(require "lib/article/notation.rkt"
         "lib/index/notation.rkt"
         morg/math
         "lib/math/type-theory/space.rkt")

(define T "T")

@notation[
  #:id (current-id)
  #:indexes @list[
    @n-index[#:key "Sp"]{
      @(math Space)
    }
  ]
  @paragraph{
    Let @(math T) be a type theory.
    Inside @(math T),
    the type theory of spaces in @(math T)
    is referred to as
    @(math Space).
  }
]
