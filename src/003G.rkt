#lang morg

(require "lib/article/observation.rkt"
         morg/math
         morg/eq-reasoning
         "lib/math/type-theory/universe-level.rkt"
         (prefix-in top: "lib/math/topos-theory/sheaf.rkt")
         (prefix-in ty: "lib/math/type-theory/sheaf.rkt")
         "lib/math/equiv.rkt"
         "lib/math/topos-theory/model.rkt"
         "lib/math/type-theory/etale.rkt"
         "lib/math/type-theory/model.rkt"
         "lib/math/type-theory/base.rkt")

(define T "T")
(define S "X")
(define i "i")

@observation[
  #:id (current-id)
  @paragraph{
    Let @(math T) be a type theory.
    We work in @(math T).
    Let @(math (is-Level i))
    and let @(math S) be a topos.
    Then we have the following equivalences.
    @disp{
      @eq-reasoning[
        @(math (top:Sheaf S i))
        @(math equiv-symbol) @ref["003F"]
        @(math (Model S (Etale i)))
        @(math equiv-symbol) @ref["002S"]
        @(math (Element (ty:Sheaf S)
                        empty-context
                        (universe i)))
      ]
    }
  }
]
