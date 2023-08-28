#lang morg

(require "lib/article/definition.rkt"
         "lib/index/notation.rkt"
         morg/math
         "lib/math/logos.rkt"
         "lib/math/lex-cocomp.rkt"
         "lib/math/type.rkt")

(define U "U")
(define V "V")

@definition[
  #:id (current-id)
  #:indexes @list[
    @index[#:key "U-logos"]{
      @(math U)-logos
    }
    @n-index[#:key "Logos"]{
      @(math (Logos U))
    }
  ]
  @paragraph{
    Let @(math U) be a universe.
    The @math{2}-category @(math (Logos U)) of
    @dfn{@(math U)-logoses} is defined to be
    the smallest full subcategory of
    @(math (LexCocomp U V))
    containing @(math (Type U))
    and closed under @(math U)-small colimits,
    where @(math V) is some universe
    strictly greater than @(math U).
    Note that the choice of @(math V) does not matter.
  }
]
