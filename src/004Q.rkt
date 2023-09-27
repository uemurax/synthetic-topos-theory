#lang morg

(require "lib/article/exercise.rkt"
         morg/math
         "lib/math/type-theory/universe-level.rkt"
         "lib/math/topos-theory/prop.rkt"
         "lib/math/topos-theory/sheaf.rkt"
         "lib/math/type-theory/base.rkt"
         "lib/math/functor.rkt"
         "lib/math/globular.rkt"
         "lib/math/power.rkt"
         "lib/math/type-theory/category.rkt")

(define T "T")
(define i "i")

@exercise[
  #:id (current-id)
  @paragraph{
    Let @(math T) be a base type theory.
    We work in @(math T).
    Let @(math (is-Level i)).
    Then the functor
    @disp{
      @(math ((Sheaf Prop i)
              . functor .
              ((cell "1") . power . (universe i))))
    }
    induced by the morphism
    @(math (bottom . morphism . top))
    in @(math Prop)
    is an equivalence.
  }
]
