#lang morg

(require "lib/article/definition.rkt"
         "lib/index/notation.rkt"
         morg/math
         (prefix-in tex: morg/math/tex)
         morg/eq-reasoning
         "lib/math/type-theory/universe-level.rkt"
         "lib/math/equiv.rkt"
         "lib/math/type-theory/type.rkt"
         (prefix-in m: "lib/math/type-theory/model.rkt")
         "lib/math/type-theory/sheaf.rkt"
         "lib/math/type-theory/space.rkt"
         "lib/math/type-theory/etale.rkt"
         "lib/math/type-theory/base.rkt"
         "lib/math/type-theory/element.rkt"
         "lib/math/type-theory/global-section.rkt"
         "lib/math/type-theory/function.rkt"
         "lib/math/type-theory/def-eq.rkt"
         "lib/math/topos-theory/model.rkt")

(define T "T")
(define i "i")
(define S tex:Sigma)
(define A "A")
(define x "x")

@definition[
  #:id (current-id)
  #:indexes @list[
    @index[#:key "model"]{
      model
    }
    @n-index[#:key "Model"]{
      @(math (Model S A))
    }
    @n-index[#:key "?"]{
      @(math (space->sheaf S A))
    }
  ]
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
      ]
    }
    We define
    @(math ((space->sheaf S A)
            . def-eq .
            ((GlobalSection Space)
             . $ .
             (space->space S A))))
    and
    @(math ((Model S A)
            . def-eq .
            (m:Element (Sheaf S)
                       m:empty-context
                       (space->sheaf S A)))).
    Elements of @(math (Model S A)) are called
    @dfn{models of @(math A) in @(math S)}.
  }
]
