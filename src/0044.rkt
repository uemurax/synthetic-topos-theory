#lang morg

(require "lib/article/definition.rkt"
         "lib/index/notation.rkt"
         morg/math
         (prefix-in lo: "lib/math/topos-theory/linear-order.rkt")
         "lib/math/type-theory/natural.rkt"
         "lib/math/type-theory/element.rkt"
         "lib/math/type-theory/finite.rkt")

(define T "T")
(define n "n")

@definition[
  #:id (current-id)
  #:indexes @list[
    @n-index[#:key "?"]{
      @(math (lo:free n))
    }
  ]
  @paragraph{
    Let @(math T) be a base type theory.
    We work in @(math T).
    Let @(math (n . is-elem . Natural)).
    We define a point
    @(math ((lo:free n) . is-elem . lo:LinearOrder))
    by adjoining
    a new bottom element @(math lo:bottom)
    and a new top element @(math lo:top)
    to @(math (Finite n))
    with the standard order.
  }
]
