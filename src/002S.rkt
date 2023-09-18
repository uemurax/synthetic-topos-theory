#lang morg

(require "lib/article/axiom.rkt"
         morg/math
         "lib/math/type-theory/universe-level.rkt"
         "lib/math/type-theory/global-section.rkt"
         "lib/math/type-theory/space.rkt"
         "lib/math/type-theory/function.rkt"
         "lib/math/type-theory/element.rkt"
         "lib/math/type-theory/etale.rkt"
         "lib/math/type-theory/base.rkt"
         "lib/math/adjunction.rkt"
         "lib/math/equiv.rkt")

(define T "T")
(define i "i")
(define GS (GlobalSection Space))
(define Cst (Constant Space))
(define A "A")

@axiom[
  #:id (current-id)
  @paragraph{
    Let @(math T) be a base type theory.
    We work in @(math T).
    Let @(math (is-Level i)).
    @unordered-list[
      @list-item{
        The function
        @(math (GS
                . is-elem .
                ((GS . $ . (Etale i))
                 . -> .
                 (universe (succ i)))))
        factors through @(math (universe i)).
      }
      @list-item{
        Let @(math (A . is-elem . (GS . $ . (Etale i)))).
        Then the counit of the adjunction
        @(math (Cst . adjunction . GS))
        at @(math A) is an equivalence.
      }
      @list-item{
        Let @(math (A . is-elem . (universe i))).
        Then the unit of the adjunction
        @(math (Cst . adjunction . GS))
        at @(math A) is an equivalence.
      }
    ]
    In short,
    the adjunction @(math (Cst . adjunction . GS))
    restricts to an equivalence
    @(math ((GS . $ . (Etale i))
            . equiv .
            (universe i)))
    of categories.
  }
]
