#lang morg

(require "lib/article/notation.rkt"
         "lib/index/notation.rkt"
         morg/math
         "lib/math/representable-map.rkt"
         "lib/math/category.rkt")

(define C "C")

@notation[
  #:id (current-id)
  #:indexes @list[
    @n-index[#:key "R"]{
      @(math (Rep C))
    }
    @n-index[#:key "R"]{
      @(math (Rep-pt C))
    }
    @n-index[#:key "r"]{
      @(math (Rep-pr C))
    }
  ]
  @paragraph{
    Let @(math C) be a lex category.
    We write
    @(math ((Rep-pr C)
            . is-morphism .
            (Rep-pt C)
            (Rep C)))
    for the universal representable map
    of presheaves on @(math C).
  }
]
