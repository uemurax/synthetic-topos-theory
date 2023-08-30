#lang morg

(require "lib/article/proposition.rkt"
         "lib/article/proof.rkt"
         morg/math
         "lib/math/lex-cocomp.rkt"
         "lib/math/category.rkt"
         "lib/math/pullback.rkt"
         "lib/math/product.rkt"
         "lib/math/function.rkt")

(define U "U")
(define V "V")
(define C "C")
(define F "F")

@proposition[
  #:id (current-id)
  @paragraph{
    Let @(math U) be a universe
    and let @(math V) be a universe
    strictly greater than @(math U).
    Then the morphism
    @(math ((pullback generic-object)
            . is-morphism .
            (free-lex-cocomp-pt U)
            ((free-lex-cocomp-pt U) . slice . generic-object)))
    in @(math (LexCocomp U V))
    is a co-left-fibration.
  }
  #:proof @proof[
    @paragraph{
      This follows from @ref["000D"] because,
      for any lex @(math U)-cocomplete category @(math C),
      the projection
      @(math (((F . is-object . ((free-lex-cocomp-pt U)
                                 . (lex-cocomp-functor U) . C))
               . * .
               ((*) . morphism . (F . $ . generic-object)))
              . morphism .
              ((free-lex-cocomp-pt U) . (lex-cocomp-functor U) . C)))
      is a left fibration.
    }
  ]
]
