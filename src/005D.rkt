#lang morg

(require "lib/article/axiom.rkt"
         morg/math
         (prefix-in l: "lib/math/type-theory/universe-level.rkt")
         "lib/math/type-theory/etale.rkt"
         "lib/math/type-theory/function.rkt"
         "lib/math/type-theory/directed.rkt"
         "lib/math/type-theory/element.rkt")

(define T "T")
(define i "i")
(define A "A")
(define B "B")
(define X "X")

@axiom[
  #:id (current-id)
  #:indexes @list[
    @index[#:key "directed univalence"]{
      directed univalence
    }
  ]
  @paragraph{
    Let @(math T) be a base type theory.
    We work in the type theory of
    spaces in @(math T).
    Let @(math (l:is-Level i)).
    Then @(math (Etale i))
    satisfies @dfn{directed univalence}.
    That is,
    for any @(math (A B . is-elem* . (Etale i))),
    the canonical function
    @disp{
      @(math ((paren (A . hom . B))
              . -> .
              (paren (A . -> . B))))
    }
    induced by the axiom that
    @(math ((X . is-elem . (Etale i)) . /-> . X))
    is a left fibration
    is an equivalence.
  }
]
