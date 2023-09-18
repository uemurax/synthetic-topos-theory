#lang morg

(require "lib/article/notation.rkt"
         "lib/index/notation.rkt"
         morg/math
         "lib/math/type-theory/model.rkt"
         "lib/math/type-theory/universe-level.rkt"
         "lib/math/type-theory/slice.rkt"
         (prefix-in cat: "lib/math/type-theory/category.rkt")
         "lib/math/type-theory/element.rkt"
         "lib/math/type-theory/blank.rkt")

(define T "T")
(define T1 (T . _ . "1"))
(define T2 (T . _ . "2"))
(define A "A")
(define i "i")
(define j "j")
(define x "x")

@notation[
  #:id (current-id)
  #:indexes @list[
    @index[#:key "slice type theory"]{
      slice type theory
    }
    @n-index[#:key "/"]{
      @(math (T . slice . x A))
    }
  ]
  @paragraph{
    Let @(math T1) be a type theory
    and let @(math T2) be a type theory
    internal to @(math T1).
    We work in @(math T1).
    Let @(math (is-Level i))
    and let @(math (A . is-Type . T2 empty-context i)).
    Then @(math (T2 . slice . x A))
    denotes the
    @dfn{slice type theory over @(math A)}.
    More precisely,
    it is described as follows.
    @unordered-list[
      @list-item{
        Let @(math (is-Level j)).
        Then @(math (Context (T2 . slice . x A) j))
        is the full subcategory of
        @(math ((Context T2 j) . cat:slice . (x . is-elem . A)))
        spanned by the display maps over @(math (x . is-elem . A))
        of level @(math j).
      }
      @list-item{
        The types of types and elements are created by
        the domain projection
        @(math ((Context (T2 . slice . x A) j)
                . cat:morphism .
                (Context T2 blank))).
      }
    ]
  }
]
