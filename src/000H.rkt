#lang morg

(require "lib/article/proposition.rkt"
         "lib/article/proof.rkt"
         morg/math
         "lib/math/lex-cocomp.rkt"
         "lib/math/pullback.rkt"
         "lib/math/category.rkt")

(define U "U")
(define V "V")

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
    is coexponentiable.
    That is, the pushout functor along
    @(math (pullback generic-object))
    has a left adjoint.
  }
  #:proof @proof[
    @paragraph{
      By @ref["000G"],
      the pushout along @(math (pullback generic-object))
      is computed by slicing.
      Since slicing commutes with limits
      and since the pushout functor commutes with colimits,
      the adjoint functor theorem applies.
    }
  ]
]
