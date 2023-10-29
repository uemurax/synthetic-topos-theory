#lang morg

(require "lib/article/exercise.rkt"
         morg/math
         "lib/math/representable-map.rkt"
         "lib/math/topos.rkt"
         "lib/math/topos-2.rkt"
         "lib/math/category.rkt")

(define U "U")
(define V "V")

@exercise[
  #:id (current-id)
  @paragraph{
    Let @(math U) be a universe
    and let @(math V) be a universe
    strictly greater than @(math U).
    Then
    @(math ((Rep-pt (Topos1 U))
            . is-object .
            ((ShTopos U V)
             . slice .
             (Rep (Topos1 U)))))
    is @(math interval)-categorically fibrant.
  }
]
