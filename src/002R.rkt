#lang morg

(require "lib/article/exercise.rkt"
         morg/math
         "lib/math/type-theory/global-section.rkt")

(define T "T")
(define T1 (T . _ . "1"))
(define T2 (T . _ . "2"))

@exercise[
  #:id (current-id)
  @paragraph{
    Let @(math T1) be a base type theory
    and let @(math T2) be a type theory
    internal to @(math T1).
    We work in @(math T1).
    Suppose that @(math T2) has
    the unit type and coproducts.
    Then @(math (Constant T2))
    is a “left adjoint” of @(math (GlobalSection T2)).
  }
]
