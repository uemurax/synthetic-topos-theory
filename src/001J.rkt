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
    Then the presheaves
    @(math ((object-classifier^ V)
            (object-classifier^-pt V)
            . is-functor* .
            (opposite (Topos1 U))
            W))
    are sheaves.
  }
  #:proof @proof[
    @paragraph{
      @(math (object-classifier^ V))
      is a sheaf by @ref["001H"].
      @(math (object-classifier^-pt V))
      is a sheaf because
      coslicing commutes with limits.
    }
  ]
]
