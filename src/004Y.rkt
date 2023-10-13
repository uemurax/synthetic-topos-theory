#lang morg

(require "lib/article/definition.rkt"
         morg/math
         (prefix-in tex: morg/math/tex)
         "lib/math/tuple.rkt"
         "lib/math/equiv.rkt")

(define U "U")
(define k tex:kappa)
(define C "C")
(define A "A")
(define L "L")

@definition[
  #:id (current-id)
  #:indexes @list[
    @index[#:key "presentable category"]{
      @(math (tuple U k))-presentable category
    }
    @index[#:key "presentable category"]{
      @(math U)-presentable category
    }
  ]
  @paragraph{
    Let @(math U) be a universe.
    @unordered-list[
      @list-item{
        Let @(math k) be a @(math U)-small
        sound doctrine.
        We say a category @(math C) is
        @dfn{@(math (tuple U k))-presentable}
        if there exist
        a @(math U)-small category @(math A),
        a reflective full subcategory @(math L)
        of the category of @(math U)-small presheaves
        on @(math A) closed under
        @(math U)-small @(math k)-filtered colimits,
        and an equivalence
        @(math (C . equiv . L)).
      }
      @list-item{
        We say a category @(math C) is
        @dfn{@(math U)-presentable}
        if it is @(math (tuple U k))-presentable
        for some @(math U)-small sound doctrine
        @(math k).
      }
    ]
  }
]
