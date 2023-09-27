#lang morg

(require "lib/article/exercise.rkt"
         morg/math
         "lib/math/topos-theory/subtopos.rkt"
         "lib/math/topos-theory/modality.rkt"
         "lib/math/type-theory/function.rkt"
         "lib/math/type-theory/element.rkt")

(define T "T")
(define X "X")

@exercise[
  #:id (current-id)
  @paragraph{
    Let @(math T) be a base type theory.
    We work in @(math T).
    Then the function
    @(math ((X . /-> . (modality X))
            . is-elem .
            (Subtopos . -> . LAM)))
    is an equivalence.
  }
]
