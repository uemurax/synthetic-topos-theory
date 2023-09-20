#lang morg

(require "lib/article/definition.rkt"
         morg/math
         "lib/math/type-theory/universe-level.rkt"
         "lib/math/type-theory/directed.rkt"
         "lib/math/type-theory/function.rkt"
         "lib/math/type-theory/base.rkt"
         "lib/math/type-theory/element.rkt"
         "lib/math/type-theory/tuple.rkt")

(define T "T")
(define i "i")
(define A "A")
(define B "B")
(define a "a")
(define a1 (a . _ . "1"))
(define a2 (a . _ . "2"))
(define f "f")
(define b1 "b")
(define y2 "y")

@definition[
  #:id (current-id)
  #:indexes @list[
    @index[#:key "left fibration"]{
      left fibration
    }
  ]
  @paragraph{
    Let @(math T) be a type theory.
    We work in the type theory of spaces in @(math T).
    Let @(math (is-Level i))
    and let @(math (A . is-elem . (universe i))).
    We say a type family
    @(math (B
            . is-elem .
            (A . -> . (universe i))))
    is a @dfn{left fibration} if,
    for all
    @(math (a1 a2 . is-elem* . A)),
    @(math (f . is-elem . (a1 . hom . a2))),
    and @(math (b1 . is-elem . (B . $ . a1))),
    the type
    @(math ((y2 . is-elem . (B . $ . a2))
            . * .
            (b1 . (hom-over B f) . y2)))
    is contractible.
  }
]
