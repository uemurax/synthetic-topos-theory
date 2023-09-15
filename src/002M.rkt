#lang morg

(require "lib/article/axiom.rkt"
         morg/math
         (prefix-in tex: morg/math/tex)
         "lib/math/type-theory/universe-level.rkt"
         "lib/math/type-theory/model.rkt"
         "lib/math/type-theory/space.rkt"
         "lib/math/type-theory/sheaf.rkt"
         "lib/math/type-theory/element.rkt"
         "lib/math/type-theory/function.rkt")

(define T "T")
(define S tex:Sigma)
(define i "i")
(define si (succ i))
(define A "A")
(define x "x")

@axiom[
  #:id (current-id)
  @paragraph{
    Let @(math T) be a base type theory
    (so that the notion of an equivalence is defined).
    We work in @(math T).
    Let @(math S) be a geometric theory,
    let @(math (is-Level i)),
    and let
    @(math (A . is-elem . (Type Space empty-context si))).
    Then the function
    @disp{
      @(math ((mor->model S A)
              . is-elem .
              ((Element Space (x . is-elem . S) A)
               . -> .
               (Element (Sheaf S) empty-context
                        (space->sheaf S A)))))
    }
    is an equivalence.
  }
]
