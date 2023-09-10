#lang morg

(require "lib/article/rule.rkt"
         morg/math
         "lib/math/type-theory/universe-level.rkt"
         "lib/math/type-theory/type.rkt")

(define i "i")
(define A "A")

@rule[
  #:id (current-id)
  @paragraph{
    We work in the core type theory.
    Let @(math (is-Level i))
    and let @(math (A . is-Type . i)).
    Then @(math A) is a judgment form.
  }
]
