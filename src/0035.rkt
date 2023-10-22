#lang morg

(require "lib/article/exercise.rkt"
         morg/math
         "lib/math/topos.rkt"
         "lib/math/topos-2.rkt"
         "lib/math/category.rkt")

(define U "U")
(define V "V")
(define W "W")

@exercise[
  #:id (current-id)
  @paragraph{
    Let @(math U) be a universe,
    let @(math V) be a universe
    greater than or equal to @(math U),
    and let @(math W) be a universe
    strictly greater than @(math V).
    Then
    @(math ((object-classifier^-pt V)
            . is-object .
            ((ShTopos U W) . slice . (object-classifier^ V))))
    is @(math interval)-categorically fibrant.
  }
]
