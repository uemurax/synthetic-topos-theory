#lang morg

(require "lib/article/exercise.rkt"
         morg/math
         "lib/math/globular.rkt"
         "lib/math/function.rkt"
         "lib/math/power.rkt"
         "lib/math/topos.rkt")

(define U "U")
(define V "V")
(define X "X")

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
    @(math V)-small products,
    and @(math (X . /-> . ((cell "1") . power . X))).
  }
]
