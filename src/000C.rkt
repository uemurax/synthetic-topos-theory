#lang morg

(require "lib/article/exercise.rkt"
         morg/math
         "lib/math/category.rkt"
         "lib/math/tuple.rkt"
         "lib/math/pullback.rkt"
         "lib/math/etale.rkt"
         "lib/math/function.rkt"
         "lib/math/lex.rkt"
         "lib/math/product.rkt"
         "lib/math/functor.rkt")

(define C "C")
(define x "x")
(define D "D")
(define F "F")
(define G "G")
(define u "u")

@exercise[
  #:id (current-id)
  @paragraph{
    Let @(math C) be a category
    that has finite limits
    and let @(math (x . is-object . C)) be an object.
    Then the pair @(math (tuple (pullback x) (generic-elem x)))
    has the following universal property:
    For any category @(math D) that has finite limits,
    the functor
    @disp{
      @(math ((G . /-> . (tuple (G . comp . (pullback x))
                                (G . $ . (generic-elem x))))
              . is-functor .
              ((C . slice . x) . lex-functor . D)
              ((F . is-object . (C . lex-functor . D))
               . * .
               ((*) . morphism . (F . $ . x)))))
    }
    is an equivalence.
    Moreover, the inverse of this functor
    at @(math (tuple F u)) is
    @(math ((pullback u) . comp . (F . slice . x))).
  }
]
