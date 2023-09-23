#lang morg

(require "lib/article/proposition.rkt"
         "lib/article/proof.rkt"
         morg/math
         (prefix-in tex: morg/math/tex)
         "lib/math/type-theory/category.rkt"
         "lib/math/type-theory/function.rkt"
         "lib/math/topos-theory/sheaf.rkt")

(define T "T")
(define S tex:Sigma)
(define S1 (S . _ . "1"))
(define S2 (S . _ . "2"))
(define f "f")
(define i "i")

@proposition[
  #:id (current-id)
  @paragraph{
    Let @(math T) be a base type theory.
    We work in @(math T).
    Let @(math S1) and @(math S2)
    be geometric theories
    and let @(math (f . is-morphism . S1 S2))
    be a morphism.
    If @(math f) has a right adjoint,
    then @(math f) is essential.
  }
  #:proof @proof[
    @paragraph{
      This is because the operation
      @(math (S . /-> . (Sheaf S i)))
      is @math{2}-functorial
      and reverses @math{1}-cells.
    }
  ]
]
