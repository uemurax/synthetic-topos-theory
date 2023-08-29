#lang morg

(require "lib/article/proposition.rkt"
         "lib/article/proof.rkt"
         morg/math
         "lib/math/category.rkt"
         "lib/math/tuple.rkt"
         "lib/math/pullback.rkt"
         "lib/math/etale.rkt"
         "lib/math/function.rkt"
         "lib/math/functor.rkt"
         "lib/math/lex-cocomp.rkt"
         "lib/math/product.rkt"
         "lib/math/equiv.rkt")

(define U "U")
(define C "C")
(define x "x")
(define y "y")
(define D "D")
(define F "F")
(define G "G")
(define u "u")

@proposition[
  #:id (current-id)
  @paragraph{
    Let @(math U) be a universe,
    let @(math C) be a lex @(math U)-cocomplete category,
    and let @(math (x . is-object . C)) be an object.
    Then the pair @(math (tuple (pullback x) (generic-elem x)))
    has the following universal property:
    For any lex @(math U)-cocomplete category @(math D),
    the equivalence given in @ref["000C"]
    restricts to an equivalence
    @disp{
      @(math (((C . slice . x) . (lex-cocomp-functor U) . D)
              . equiv .
              ((F . is-object . (C . (lex-cocomp-functor U) . D))
               . * .
               ((*) . morphism . (F . $ . x))))).
    }
  }
  #:proof @proof[
    @paragraph{
      This follows from the fact that,
      for any lex @(math U)-cocomplete category @(math C)
      and any morphism @(math (u . is-morphism . x y))
      in @(math C),
      the pullback functor
      @(math ((pullback u)
              . is-functor .
              (C . slice . y)
              (C . slice . x)))
      is a morphism of lex @(math U)-cocomplete categories.
    }
  ]
]
