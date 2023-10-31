#lang morg

(require "lib/article/axiom.rkt"
         morg/math
         "lib/math/functor.rkt"
         "lib/math/type-theory/sheaf.rkt"
         "lib/math/type-theory/universe-level.rkt"
         "lib/math/type-theory/base.rkt"
         "lib/math/type-theory/function.rkt"
         "lib/math/type-theory/global-section.rkt")

(define T "T")
(define X "X")
(define Y "Y")
(define f "f")

@axiom[
  #:id (current-id)
  @paragraph{
    Let @(math T) be a base type theory.
    We work in @(math T).
    Let @(math X) be a topos.
    Suppose that the functor
    @disp{
      @(math ((Constant (Sheaf X))
              . is-functor .
              (universe zero)
              ((GlobalSection (Sheaf X)) . $ . (universe zero))))
    }
    is an equivalence of categories.
    Then @(math X) is contractible.
  }
]
