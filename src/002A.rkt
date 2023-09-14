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
        A universe @(math (Etale i))
        in @(math (Type (succ i)))
        is constructed.
      }
      @list-item{
        @(math (Type (succ i)))
        has function types
        whose domains are in @(math (Etale i)).
        In particular,
        univalence for @(math (Etale i)) makes sense.
      }
      @list-item{
        @(math (Etale i)) is univalent.
      }
      @list-item{
        @(math (Etale i)) is closed under
        the unit type,
        pair types,
        and identity types.
      }
      @list-item{
        @(math (Etale i)) has finite colimits
        that admit elimination at all levels.
      }
      @list-item{
        @(math (Etale i)) has coproducts
        indexed over any @(math (A . is-Type . i))
        in @(math T)
        that admit elimination at all levels.
      }
    ]
  }
]
