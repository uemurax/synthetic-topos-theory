#lang morg

(require "lib/article/definition.rkt"
         "lib/index/notation.rkt"
         morg/math
         (prefix-in tex: morg/math/tex)
         "lib/math/type-theory/universe-level.rkt"
         "lib/math/type-theory/element.rkt"
         "lib/math/type-theory/model.rkt"
         "lib/math/type-theory/sheaf.rkt"
         "lib/math/type-theory/space.rkt"
         "lib/math/type-theory/function.rkt"
         "lib/math/type-theory/def-eq.rkt"
         "lib/math/type-theory/substitution.rkt")

(define T "T")
(define S tex:Sigma)
(define i "i")
(define si (succ i))
(define A "A")
(define x "x")
(define f "f")

@definition[
  #:id (current-id)
  #:indexes @list[
    @n-index[#:key "c"]{
      @(math (mor->model S A))
    }
  ]
  @paragraph{
    Let @(math T) be a type theory.
    We work in @(math T).
    Let @(math S) be a geometric theory,
    let @(math (is-Level i)),
    and let
    @(math (A
            . is-elem .
            (Type Space empty-context si))).
    We define a function
    @disp{
          @(math ((mor->model S A)
                  . is-elem .
                  ((Element Space (x . is-elem . S) A)
                   . -> .
                   (Element (Sheaf S) empty-context (space->sheaf S A)))))
    }
    by
    @(math (((mor->model S A) . $ . f)
            . def-eq .
            ((space->sheaf S f)
             . subst .
             (list x (generic-object S))))).
  }
]
