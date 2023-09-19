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
    Then the Yoneda embedding
    exhibits @(math (ShTopos U V))
    as the completion of @(math (Topos1 U))
    under @(math V)-small colimits
    preserving étale colimits.
  }
]
