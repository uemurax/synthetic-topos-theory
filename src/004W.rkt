#lang morg

(require "lib/article/observation.rkt"
         morg/math
         morg/eq-reasoning
         "lib/math/type-theory/universe-level.rkt"
         "lib/math/type-theory/base.rkt"
         "lib/math/type-theory/element.rkt"
         "lib/math/type-theory/global-section.rkt"
         "lib/math/type-theory/space.rkt"
         "lib/math/type-theory/function.rkt"
         "lib/math/type-theory/etale.rkt"
         "lib/math/topos-theory/sheaf.rkt"
         "lib/math/equiv.rkt")

(define T "T")
(define i "i")
(define A "A")
(define Cst (Constant Space))
(define GS (GlobalSection Space))

@observation[
  #:id (current-id)
  @paragraph{
    Let @(math T) be a base type theory.
    We work in @(math T).
    Let @(math (is-Level i))
    and let @(math (A . is-elem . (universe zero))).
    By @ref["002S"],
    it corresponds to
    @(math ((Cst . $ . A) . is-elem . (Etale zero)))
    which is a topos.
    Then we have the following equivalences.
    @disp{
      @eq-reasoning[
        @(math (Sheaf (Cst . $ . A) i))
        @(math equiv-symbol) @%{adjointness}
        @(math (A . -> . (GS . $ . (Etale i))))
        @(math equiv-symbol) @ref["002S"]
        @(math (A . -> . (universe i)))
      ]
    }
  }
]
