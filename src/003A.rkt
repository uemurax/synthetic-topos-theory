#lang morg

(require "lib/article/definition.rkt"
         morg/math
         "lib/math/type-theory/universe-level.rkt"
         "lib/math/type-theory/directed.rkt"
         "lib/math/type-theory/type.rkt"
         "lib/math/type-theory/element.rkt")

(define T "T")
(define i "i")
(define A "A")
(define a "a")
(define x "x")

@definition[
  #:id (current-id)
  #:indexes @list[
    @index[#:key "initial element"]{
      initial element
    }
  ]
  @paragraph{
    Let @(math T) be a type theory.
    We work in the type theory of spaces in @(math T).
    Let @(math (is-Level i))
    and let @(math (A . is-Type . i)).
    We say an element @(math (a . is-elem . A))
    is @dfn{initial} if,
    for every @(math (x . is-elem . A)),
    the type @(math (a . hom . x))
    is contractible.
  }
]
