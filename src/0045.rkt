#lang morg

(require "lib/article/exercise.rkt"
         morg/math
         (prefix-in lo: "lib/math/topos-theory/linear-order.rkt"))

(define T "T")

@exercise[
  #:id (current-id)
  @paragraph{
    Let @(math T) be a base type theory.
    We work in @(math T).
    Then the morphisms between
    points of @(math lo:LinearOrder)
    are equivalent to the
    functions between carrier types
    preserving orderings,
    bottom elements,
    and top elements.
  }
]
