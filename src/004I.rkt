#lang morg

(require "lib/article/proposition.rkt"
         "lib/article/proof.rkt"
         morg/math
         "lib/math/type-theory/universe-level.rkt"
         "lib/math/type-theory/base.rkt")

(define T "T")
(define X "X")

@proposition[
  #:id (current-id)
  @paragraph{
    Let @(math T) be a base type theory.
    We work in @(math T).
    Let @(math X) be a subtopos.
    Then the constant sheaf and global section adjunction
    for @(math X)
    yields a lex modality on @(math (universe zero)).
  }
  #:proof @proof[
    @paragraph{
      By definition.
    }
  ]
]
