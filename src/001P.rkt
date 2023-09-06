#lang morg

(require "lib/article/definition.rkt"
         "lib/index/notation.rkt"
         morg/math
         "lib/math/topos.rkt"
         "lib/math/classifying-topos.rkt"
         "lib/math/logos.rkt"
         "lib/math/category.rkt"
         "lib/math/function.rkt"
         "lib/math/functor.rkt"
         "lib/math/pullback.rkt")

(define U "U")
(define V "V")
(define X "X")
(define Y "Y")
(define R "R")

@definition[
  #:id (current-id)
  #:indexes @list[
    @n-index[#:key "[[]]"]{
      @(math (interpret X Y))
    }
    @index[#:key "object"]{
      @(math Y)-objects in @(math X)
    }
  ]
  @paragraph{
    Let @(math U) be a universe,
    let @(math V) be a universe
    strictly greater than @(math U),
    and let @(math X) be a @(math U)-topos.
    The composite
    @(math (morphism-chain
            (Sh . $ . X)
            ((Topos1 U) . slice . X)
            ((ShTopos U V) . slice . X)))
    induces a morphism of @(math V)-logoses
    @(math (((enlarge V) (Sh . $ . X))
            . morphism .
            ((ShTopos U V) . slice . X)))
    which has a right adjoint @(math R).
    We define a functor
    @(math ((Y . /-> . (interpret X Y))
            . is-functor .
            (ShTopos U V)
            ((enlarge V) (Sh . $ . X))))
    to be
    @(math (R . comp . (pullback X))).
    Generalized elements of @(math (interpret X Y))
    are called
    @dfn{@(math Y)-objects in @(math X)}.
  }
]
