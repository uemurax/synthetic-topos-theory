#lang morg

(require "lib/article/notation.rkt"
         "lib/index/notation.rkt"
         morg/math
         "lib/math/type-theory/universe-level.rkt"
         "lib/math/type-theory/base.rkt"
         "lib/math/topos-theory/modality.rkt")

(define T "T")

@notation[
  #:id (current-id)
  #:indexes @list[
    @n-index[#:key "LAM"]{
      @(math LAM)
    }
  ]
  @paragraph{
    Let @(math T) be a base type theory.
    We work in @(math T).
    We refer to the type of
    lex accessible modalities on
    @(math (universe zero))
    as @(math LAM).
  }
]
