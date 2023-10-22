#lang morg

(require "lib/article/definition.rkt"
         morg/math
         "lib/math/simplicial.rkt"
         "lib/math/category.rkt")

(define U "U")
(define C "C")
(define I "I")

@definition[
  #:id (current-id)
  #:indexes @list[
    @index[#:key "left fibraiton"]{
      @(math I)-left fibration
    }
  ]
  @paragraph{
    Let @(math U) be a universe,
    let @(math C) be a @(math U)-logos,
    and let @(math I) be a
    partially ordered object in @(math C)
    with least and greatest elements.
    We say a morphism in @(math C) is
    a @dfn{@(math I)-left fibration}
    if it is right orthogonal to
    @(math (@face^{1}
            . is-morphism .
            (std-simplex-poset I "0")
            (std-simplex-poset I "1"))).
  }
]
