#lang morg

(require "lib/article/notation.rkt"
         "lib/index/notation.rkt"
         morg/math
         "lib/math/type-theory/space.rkt"
         "lib/math/type-theory/category.rkt"
         "lib/math/type-theory/model.rkt"
         "lib/math/type-theory/sheaf.rkt"
         "lib/math/type-theory/function.rkt")

(define T "T")
(define S "X")
(define X "Z")

@notation[
  #:id (current-id)
  #:indexes @list[
    @n-index[#:key "*"]{
      @(math (space->space S X))
    }
  ]
  @paragraph{
    Let @(math T) be a base type theory.
    We work in @(math T).
    Let @(math S) be a topos.
    By @ref["002W"],
    we have a translation
    @disp{
      @(math (Space
              . morphism .
              (Globalization (Sheaf S) Space)))
    }
    that preserves all the structures of
    the type theory of spaces.
    We refer to this translation as
    @(math (X . /-> . (space->space S X))).
  }
]
