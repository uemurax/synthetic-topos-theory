#lang morg

(require "lib/article/exercise.rkt"
         morg/math
         "lib/math/topos.rkt"
         "lib/math/category.rkt")

(define U "U")

@exercise[
  #:id (current-id)
  @paragraph{
    Let @(math U) be a universe.
    Then @(math (Topos1 U))
    is the initial category with @(math U)-étale morphisms,
    where the universal étale morphism in @(math (Topos1 U))
    is @(math (object-classifier-pr
               . is-morphism .
               object-classifier-pt
               object-classifier))
    defined in @ref["000K"].
  }
]
