#lang morg

(require "lib/article/definition.rkt"
         morg/math
         "lib/math/functor.rkt"
         "lib/math/cone.rkt"
         "lib/math/transformation.rkt")

(define U "U")
(define C "C")
(define I "I")
(define X "X")
(define Y "Y")
(define p "p")

@definition[
  #:id (current-id)
  #:indexes @list[
    @index[#:key "descent"]{
      descent
    }
  ]
  @paragraph{
    Let @(math U) be a universe
    and let @(math C) be a category
    that has finite limits and
    @(math U)-small colimits.
    We say @(math U)-small colimits in @(math C)
    satisfy @dfn{descent} if,
    for any @(math U)-small category @(math I),
    any functors
    @(math (X Y . is-functor* . (right-cone I) C)),
    and any natural transformation
    @(math (p . is-nat-trans . X Y)),
    if @(math Y) is a colimit diagram
    and if the restriction of @(math p)
    to @(math I) is cartesian
    (that is, all naturality squares are pullbacks),
    then @(math X) is a colimit diagram
    if and only if @(math p) is cartesian.
  }
]
