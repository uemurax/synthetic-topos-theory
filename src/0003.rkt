#lang morg

(require "lib/article/definition.rkt"
         "lib/index/notation.rkt"
         morg/math
         "lib/math/lex-cocomp.rkt")

(define U "U")
(define V "V")

@definition[
  #:id (current-id)
  #:indexes @list[
    @n-index[#:key "LexCocomp"]{
      @(math (LexCocomp U V))
    }
  ]
  @paragraph{
    Let @(math U) be a universe
    and let @(math V) be a universe
    strictly greater than @(math U).
    We define @(math (LexCocomp U V)) to be the
    subcategory of the category of @(math V)-small categories
    whose objects are the
    @(math V)-small lex @(math U)-cocomplete categories
    and morphisms are the
    morphisms of lex @(math U)-cocomplete categories.
  }
]
