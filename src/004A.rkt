#lang morg

(require "lib/article/proposition.rkt"
         "lib/article/proof.rkt"
         morg/math
         "lib/math/type-theory/element.rkt"
         "lib/math/type-theory/natural.rkt"
         (prefix-in lo: "lib/math/topos-theory/linear-order.rkt")
         "lib/math/type-theory/category.rkt"
         "lib/math/type-theory/function.rkt"
         "lib/math/type-theory/finite.rkt")

(define T "T")
(define n "n")
(define A "A")

@proposition[
  #:id (current-id)
  @paragraph{
    Let @(math T) be a base type theory.
    We work in the type theory of spaces @(math T).
    Let @(math (n . is-elem . Natural)) in @(math T)
    and let @(math (A . is-elem . lo:LinearOrder)).
    Then the morphisms
    from @(math (lo:free n))
    to @(math A)
    are equivalent to
    the (non-strictly) increasing chains
    of points of @(math A) of length @(math n).
  }
  #:proof @proof[
    @paragraph{
      By @ref["0045"],
      the morphisms @(math ((lo:free n) . morphism . A))
      are equivalent to
      the functions @(math ((lo:free n) . -> . A))
      preserving orderings, bottom elements, and top elements.
      By the construction of @(math (lo:free n)),
      they are equivalent to
      the functions @(math ((Finite n) . -> . A))
      preserving orderings,
      which are equivalent to
      the increasing chains
      of points of @(math A) of length @(math n).
    }
  ]
]
