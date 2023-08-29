#lang morg

(require "lib/article/definition.rkt"
         "lib/index/notation.rkt"
         morg/math
         "lib/math/topos.rkt"
         "lib/math/category.rkt"
         "lib/math/lex-cocomp.rkt"
         "lib/math/pullback.rkt")

(define U "U")

@definition[
  #:id (current-id)
  #:indexes @list[
    @n-index[#:key "A"]{
      @(math object-classifier)
    }
    @n-index[#:key "A*"]{
      @(math object-classifier-pt)
    }
    @n-index[#:key "p"]{
      @(math object-classifier-pr)
    }
  ]
  @paragraph{
    Let @(math U) be a universe.
    We define a morphism
    @(math (object-classifier-pr
            . is-morphism .
            object-classifier-pt
            object-classifier))
    in @(math (Topos U))
    to be the one sent by @(math Sh) to
    @(math ((pullback generic-object)
            . is-morphism .
            (free-lex-cocomp-pt U)
            ((free-lex-cocomp-pt U) . slice . generic-object))).
  }
]
