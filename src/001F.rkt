#lang morg

(require "lib/article/exercise.rkt"
         morg/math
         "lib/math/logos.rkt"
         "lib/math/category.rkt"
         "lib/math/lex-cocomp.rkt")

(define U "U")
(define V "V")
(define W "W")
(define C "C")

@exercise[
  #:id (current-id)
  @paragraph{
    Let @(math U) be a universe
    and let @(math V) be a universe
    greater than or equal to @(math U).
    For any @(math U)-logos @(math C),
    the unit @(math (C . morphism . ((enlarge V) C))),
    which is a morphism in
    @(math (LexCocomp U W))
    for some universe @(math W)
    strictly greater than @(math V),
    is fully faithful.
    We thus regard @(math C)
    as a full subcategory of @(math ((enlarge V) C)).
  }
]
