#lang morg

(require "lib/article/definition.rkt"
         "lib/index/notation.rkt"
         morg/math
         "lib/math/lex-cocomp.rkt")

(define U "U")
(define C "C")
(define D "D")

@definition[
  #:id (current-id)
  #:indexes @list[
    @n-index[#:key "LexCocomp"]{
      @(math (C . (lex-cocomp-functor U) . D))
    }
  ]
  @paragraph{
    Let @(math U) be a universe
    and let @(math C) and @(math D) be
    lex @(math U)-cocomplete universes.
    We define @(math (C . (lex-cocomp-functor U) . D))
    to be the full subcategory of
    the category of functors from @(math C) to @(math D)
    spanned by the morphisms of
    lex @(math U)-cocomplete categories.
  }
]
