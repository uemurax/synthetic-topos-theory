#lang morg

(require "lib/article/proposition.rkt"
         "lib/article/proof.rkt"
         morg/math
         "lib/math/topos.rkt"
         "lib/math/functor.rkt"
         "lib/math/category.rkt")

(define U "U")
(define V "V")
(define W "W")

@proposition[
  #:id (current-id)
  @paragraph{
    Let @(math U) be a universe,
    let @(math V) be a universe
    greater than or equal to @(math U),
    and let @(math W) be a universe
    strictly greater than @(math W).
    Then the presheaf
    @(math ((object-classifier^ V)
            . is-functor .
            (opposite (Topos1 U))
            W))
    is a sheaf.
  }
  #:proof @proof[
    @paragraph{
      By @ref["001H"].
    }
  ]
]
