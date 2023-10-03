#lang morg

(require "lib/article/observation.rkt"
         morg/math
         morg/eq-reasoning
         "lib/math/type-theory/universe-level.rkt"
         "lib/math/type-theory/function.rkt"
         "lib/math/type-theory/element.rkt"
         "lib/math/topos-theory/sheaf.rkt"
         "lib/math/type-theory/tuple.rkt"
         "lib/math/equiv.rkt"
         "lib/math/type-theory/model.rkt"
         (prefix-in ty: "lib/math/type-theory/sheaf.rkt")
         "lib/math/type-theory/space.rkt"
         "lib/math/type-theory/etale.rkt")

(define T "T")
(define S "X")
(define S1 (S . _ . "1"))
(define S2 (S . _ . "2"))
(define i "i")
(define x "x")
(define y "y")

@observation[
  #:id (current-id)
  @paragraph{
    Let @(math T) be a base type theory.
    We work in @(math T).
    Let @(math (is-Level i)),
    let @(math S1) be a topos,
    and let @(math (S2 . $ . x))
    be a topos
    under assumption @(math (x . is-elem . S1)).
    Then we have the following equivalences.
    @disp{
      @eq-reasoning[
        @(math (Sheaf ((x . is-elem . S1) . * . (S2 . $ . x)) i))
        @(math equiv-symbol) @ref["002Y"]
        @(math (Element (Globalization (ty:Sheaf S1) Space)
                        (y . is-elem . (S2 . $ . (generic-global-section S1)))
                        (Etale i)))
        @(math equiv-symbol) @%{definition}
        @(math (Element (ty:Sheaf S1)
                        empty-context
                        (Sheaf (S2 . $ . (generic-global-section S1)) i)))
      ]
    }
  }
]
