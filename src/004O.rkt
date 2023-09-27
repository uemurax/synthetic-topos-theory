#lang morg

(require "lib/article/exercise.rkt"
         morg/math
         "lib/math/topos-theory/prop.rkt"
         "lib/math/type-theory/element.rkt")

(define T "T")

@exercise[
  #:id (current-id)
  @paragraph{
    Let @(math T) be a base type theory.
    We work in the type theory of
    spaces in @(math T).
    Then the point @(math (top . is-elem . Prop))
    is coétale.
  }
]
