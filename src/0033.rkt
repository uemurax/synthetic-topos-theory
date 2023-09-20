#lang morg

(require "lib/article/exercise.rkt"
         morg/math
         "lib/math/topos.rkt")

(define U "U")
(define V "V")

@exercise[
  #:id (current-id)
  @paragraph{
    Let @(math U) be a universe
    and let @(math V) be a universe
    strictly greater than @(math U).
    Then categorical fibrations
    in @(math (ShTopos U V))
    are closed under
    pullback,
    identities,
    composition,
    diagonal,
    and @(math V)-small products.
  }
]
