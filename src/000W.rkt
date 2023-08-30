#lang morg

(require "lib/article/definition.rkt"
         "lib/index/notation.rkt"
         morg/math
         "lib/math/topos.rkt"
         "lib/math/category.rkt")

(define U "U")
(define X "X")

@definition[
  #:id (current-id)
  #:indexes @list[
    @n-index[#:key "Etale"]{
      @(math (Etale X))
    }
  ]
  @paragraph{
    Let @(math U) be a universe
    and let @(math X) be a @(math U)-topos.
    We define @(math (Etale X))
    to be the full subcategory of
    @(math ((Topos U) . slice . X))
    spanned by the étale morphisms with codomain @(math X).
  }
]
