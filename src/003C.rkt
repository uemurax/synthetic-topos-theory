#lang morg

(require "lib/article/definition.rkt"
         "lib/index/notation.rkt"
         morg/math
         "lib/math/type-theory/universe-level.rkt"
         "lib/math/equiv.rkt"
         "lib/math/type-theory/type.rkt"
         (prefix-in m: "lib/math/type-theory/model.rkt")
         "lib/math/type-theory/sheaf.rkt"
         "lib/math/type-theory/space.rkt"
         "lib/math/type-theory/element.rkt"
         "lib/math/type-theory/def-eq.rkt"
         "lib/math/topos-theory/model.rkt")

(define T "T")
(define i "i")
(define S "X")
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
  ]
  @paragraph{
    Let @(math T) be a base type theory.
    We work in @(math T).
    Let @(math (is-Level i)),
    let @(math (A
                . is-elem .
                (m:Type Space m:empty-context (succ i)))),
    and let @(math S) be a topos.
    We define
    @(math ((Model S A)
            . def-eq .
            (m:Element (Sheaf S)
                       m:empty-context
                       (space->sheaf S A)))).
    Elements of @(math (Model S A)) are called
    @dfn{models of @(math A) in @(math S)}.
  }
]
