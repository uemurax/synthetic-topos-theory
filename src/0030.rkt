#lang morg

(require "lib/article/exercise.rkt"
         morg/math
         "lib/math/function.rkt"
         "lib/math/functor.rkt"
         "lib/math/action.rkt"
         "lib/math/topos.rkt")

(define U "U")
(define C "C")
(define X "X")

@exercise[
  #:id (current-id)
  @paragraph{
    Let @(math U) be a universe
    and let @(math C) be a @(math U)-small category.
    Then the functor
    @(math ((X . /-> . (C . action-l . X))
            . is-functor .
            (Topos1 U)
            (Topos1 U)))
    preserves étale morphisms.
  }
]
