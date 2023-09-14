#lang morg

(require "lib/article/rule.rkt"
         morg/math
         "lib/math/type-theory/universe-level.rkt"
         "lib/math/type-theory/type.rkt")

(define T "T")
(define i "i")
(define A "A")

@rule[
  #:id (current-id)
  @paragraph{
    Let @(math T) be a type theory.
    We work in the type theory of spaces in @(math T).
    Let @(math (is-Level i)).
    Then @(math (Type (succ i)))
    has the unit type,
    pair types,
    identity types,
    and products indexed over
    any @(math (A . is-Type . i))
    in @(math T).
  }
]
