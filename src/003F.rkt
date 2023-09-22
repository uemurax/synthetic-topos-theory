#lang morg

(require "lib/article/observation.rkt"
         morg/math
         (prefix-in tex: morg/math/tex)
         morg/eq-reasoning
         "lib/math/type-theory/universe-level.rkt"
         "lib/math/type-theory/type.rkt"
         (prefix-in m: "lib/math/type-theory/model.rkt")
         "lib/math/type-theory/element.rkt"
         "lib/math/type-theory/space.rkt"
         "lib/math/equiv.rkt"
         "lib/math/type-theory/sheaf.rkt"
         "lib/math/type-theory/function.rkt"
         "lib/math/type-theory/global-section.rkt"
         "lib/math/topos-theory/model.rkt")

(define T "T")
(define S tex:Sigma)
(define i "i")
(define A "A")
(define x "x")

@observation[
  #:id (current-id)
  @paragraph{
    Let @(math T) be a base type theory.
    We work in @(math T).
    Let @(math (is-Level i)),
    let @(math (A
                . is-elem .
                (m:Type Space m:empty-context (succ i)))),
    and let @(math S) be a geometric theory.
    Then we have the following equivalences.
    @disp{
      @eq-reasoning[
        @(math (m:Element Space (x . is-elem . S) A))
        @(math equiv-symbol) @ref["002Y"]
        @(math (m:Element (m:Globalization (Sheaf S) Space)
                          m:empty-context
                          (space->space S A)))
        @(math equiv-symbol) @%{definition}
        @(math (m:Element (Sheaf S)
                          m:empty-context
                          (m:Element Space m:empty-context
                                     (space->space S A))))
        @(math equiv-symbol) @%{definition}
        @(math (m:Element (Sheaf S)
                          m:empty-context
                          ((GlobalSection Space)
                           . $ .
                           (space->space S A))))
        @(math equiv-symbol) @%{definition}
        @(math (Model S A))
      ]
    }
  }
]
