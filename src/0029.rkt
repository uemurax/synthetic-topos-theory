#lang morg

(require "lib/article/rule.rkt"
         morg/math
         "lib/math/type-theory/universe-level.rkt"
         (submod "lib/math/type-theory/space.rkt" extra)
         "lib/math/type-theory/element.rkt"
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
    function types,
    finite colimits,
    and products and coproducts indexed over
    any @(math (A . is-Type . (succ i)))
    in @(math T).
    Moreover, @(math (Type (succ i)))
    is represented by a univalent universe
    @(math ((universe (succ i))
            . is-elem .
            (Type (succ (succ i))))).
  }
]
