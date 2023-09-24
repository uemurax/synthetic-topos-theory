#lang morg

(require "lib/article/proposition.rkt"
         "lib/article/proof.rkt"
         morg/math
         "lib/math/type-theory/universe-level.rkt"
         "lib/math/type-theory/type.rkt"
         "lib/math/type-theory/etale.rkt")

(define T "T")
(define i "i")

@proposition[
  #:id (current-id)
  @paragraph{
    Let @(math T) be a base type theory.
    We work in the type theory of spaces in @(math T).
    Let @(math (is-Level i)).
    @unordered-list[
      @list-item{
        @(math (Type (succ i)))
        has propositional truncation.
      }
      @list-item{
        @(math (Etale i))
        is closed under propositional truncation.
      }
    ]
  }
  #:proof @proof[
    @paragraph{
      The join construction works.
    }
  ]
]
