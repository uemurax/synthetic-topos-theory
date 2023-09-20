#lang morg

(require "lib/article/exercise.rkt"
         morg/math
         "lib/math/topos.rkt"
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
    Then categorical fibrations in
    @(math (ShTopos U W))
    are closed under exponentials by
    @(math ((object-classifier^-pr V)
            . is-morphism .
            (object-classifier^-pt V)
            (object-classifier^ V))).
  }
]
