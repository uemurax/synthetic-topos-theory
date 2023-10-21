#lang morg

(require "lib/article/exercise.rkt"
         morg/math
         "lib/math/representable-map.rkt"
         "lib/math/topos.rkt")

(define U "U")
(define V "V")

@exercise[
  #:id (current-id)
  @paragraph{
    Let @(math U) be a universe
    and let @(math V) be a universe
    strictly greater than @(math U).
    Then @(math (Rep (Topos1 U)))
    and @(math (Rep-pt (Topos1 U)))
    are in @(math (ShTopos U V)).
  }
]
