#lang morg

(require "lib/article/exercise.rkt"
         morg/math
         "lib/math/type-theory/function.rkt"
         "lib/math/equiv.rkt"
         "lib/math/type-theory/element.rkt"
         (prefix-in ess: "lib/math/topos-theory/essential.rkt")
         "lib/math/type-theory/directed.rkt")

(define T "T")
(define X "X")
(define a "a")
(define x "x")

@exercise[
  #:id (current-id)
  @paragraph{
    Let @(math T) be a base type theory.
    We work in @(math T).
    Let @(math X) be a topos
    and let @(math a) be a
    coétale point of @(math X).
    Then we have a canonical equivalence
    @disp{
      @(math ((x . is-elem . X)
              . -> .
              (((ess:corepr-object a) . $ . x)
               . equiv .
               (a . hom . x)))).
    }
  }
]
