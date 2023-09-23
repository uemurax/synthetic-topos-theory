#lang morg

(require "lib/article/definition.rkt"
         morg/math
         (prefix-in tex: morg/math/tex)
         "lib/math/type-theory/function.rkt"
         "lib/math/type-theory/category.rkt"
         "lib/math/type-theory/blank.rkt"
         "lib/math/type-theory/tuple.rkt")

(define T "T")
(define S tex:Sigma)
(define a "a")

@definition[
  #:id (current-id)
  #:indexes @list[
    @index[#:key "essential point"]{
      essential point
    }
  ]
  @paragraph{
    Let @(math T) be a base type theory.
    We work in @(math T).
    Let @(math S) be a geometric theory.
    We say a point @(math a) of @(math S)
    is @dfn{essential} if
    the morphism
    @(math ((blank . /-> . a)
            . is-morphism .
            (*) S))
    is essential.
  }
]
