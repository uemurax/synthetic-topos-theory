#lang morg

(require "lib/article/rule.rkt"
         morg/math
         "lib/math/type-theory/universe-level.rkt"
         "lib/math/type-theory/type.rkt")

(define i "i")
(define i1 (i . _ . "1"))
(define i2 (i . _ . "2"))
(define A "A")

@rule[
  #:id (current-id)
  @paragraph{
    We work in the core type theory.
    Let @(math (is-Level* i1 i2)),
    let @(math (A . is-Type . i1)),
    and suppose that @(math (i1 . <= . i2)).
    Then @(math (A . is-Type . i2)).
  }
]
