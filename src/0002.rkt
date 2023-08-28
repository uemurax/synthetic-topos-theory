#lang morg

(require "lib/article/definition.rkt"
         morg/math
         "lib/math/functor.rkt")

(define U "U")
(define C "C")
(define D "D")
(define F "F")

@definition[
  #:id (current-id)
  #:indexes @list[
    @index[#:key "morphism of lex U-cocomplete categories"]{
      morphism of lex @(math U)-cocomplete categories
    }
  ]
  @paragraph{
    Let @(math U) be a universe
    and let @(math C) and @(math D) be
    lex @(math U)-cocomplete categories.
    We say a functor @(math (F . is-functor . C D))
    is a @dfn{morphism of lex @(math U)-cocomplete categories}
    if the following conditions are satisfied.
    @unordered-list[
      @list-item{
        @(math F) commutes with finite limits.
      }
      @list-item{
        @(math F) commutes with @(math U)-small colimits.
      }
    ]
  }
]
