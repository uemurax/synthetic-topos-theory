#lang morg

(require "lib/article/notation.rkt"
         "lib/index/notation.rkt"
         morg/math
         "lib/math/type-theory/universe-level.rkt"
         "lib/math/type-theory/type.rkt"
         "lib/math/type-theory/element.rkt"
         "lib/math/type-theory/directed.rkt")

(define T "T")
(define i "i")
(define A "A")
(define a "a")
(define a1 (a . _ . "1"))
(define a2 (a . _ . "2"))

@notation[
  #:id (current-id)
  #:indexes @list[
    @n-index[#:key "=>"]{
      @(math (a1 . hom . a2))
    }
  ]
  @paragraph{
    Let @(math T) be a type theory.
    We work in the type theory of spaces in @(math T).
    Let @(math (is-Level i)),
    let @(math (A . is-Type . i)),
    and let @(math (a1 a2 . is-elem* . A)).
    We write @(math ((a1 . hom . a2) . is-Type . i))
    for the type of
    morphisms from @(math a1) to @(math a2).
  }
]
