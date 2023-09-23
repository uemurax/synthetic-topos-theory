#lang morg

(require "lib/article/notation.rkt"
         "lib/index/notation.rkt"
         morg/math
         "lib/math/type-theory/sheaf.rkt")

(define T "T")
(define S "X")

@notation[
  #:id (current-id)
  #:indexes @list[
    @n-index[#:key "Sh"]{
      @(math (Sheaf S))
    }
  ]
  @paragraph{
    Let @(math T) be a type theory
    and let @(math S) be a topos
    in @(math T).
    Inside @(math T),
    the type theory of sheaves on @(math S)
    is referred to as
    @(math (Sheaf S)).
  }
]
