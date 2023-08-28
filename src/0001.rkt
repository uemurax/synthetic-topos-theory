#lang morg

(require "lib/article/definition.rkt"
         morg/math)

(define U "U")
(define C "C")

@definition[
  #:id (current-id)
  #:indexes @list[
    @index[#:key "lex U-cocomplete category"]{
      lex @(math U)-cocomplete category
    }
  ]
  @paragraph{
    Let @(math U) be a universe.
    We say a category @(math C) is
    @dfn{lex @(math U)-cocomplete}
    if the following conditions are satisfied.
    @unordered-list[
      @list-item{
        @(math C) has finite limits.
      }
      @list-item{
        @(math C) has @(math U)-small colimits.
      }
      @list-item{
        @(math U)-small colimits in @(math C)
        satisfy descent.
      }
    ]
  }
]
