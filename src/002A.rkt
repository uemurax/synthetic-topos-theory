#lang morg

(require "lib/article/rule.rkt"
         morg/math
         "lib/math/type-theory/universe-level.rkt"
         "lib/math/type-theory/etale.rkt"
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
    @unordered-list[
      @list-item{
        A univalent universe @(math (Etale i))
        in @(math (Type (succ i)))
        is constructed.
      }
      @list-item{
        @(math (Etale i)) is closed under
        the unit type,
        pair types,
        identity types,
        finite colimits,
        and coproducts
        indexed over any @(math (A . is-Type . i)).
      }
    ]
  }
]
