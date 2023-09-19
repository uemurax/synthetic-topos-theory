#lang morg

(require "lib/article/notation.rkt"
         "lib/index/notation.rkt"
         morg/math
         "lib/math/function.rkt"
         "lib/math/functor.rkt"
         "lib/math/action.rkt"
         "lib/math/topos.rkt"
         "lib/math/power.rkt")

(define U "U")
(define V "V")
(define C "C")
(define X "X")

@notation[
  #:id (current-id)
  #:indexes @list[
    @n-index[#:key "power"]{
      @(math (C . power . X))
    }
  ]
  @paragraph{
    Let @(math U) be a universe,
    let @(math V) be a universe
    strictly greater than @(math U),
    and let @(math C) be a @(math U)-small category.
    By @ref["0030"],
    the functor
    @(math ((X . /-> . (C . action-l . X))
            . is-functor .
            (Topos1 U)
            (ShTopos U V)))
    takes étale colimits to colimits
    and thus extends to a functor
    @(math ((ShTopos U V) . functor . (ShTopos U V)))
    preserving @(math V)-small colimits
    by @ref["002Z"].
    We refer to the right adjoint of
    @(math ((X . /-> . (C . action-l . X))
            . is-functor .
            (ShTopos U V)
            (ShTopos U V)))
    as @(math (X . /-> . (C . power . X))).
  }
]
