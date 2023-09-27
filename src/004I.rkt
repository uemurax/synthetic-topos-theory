#lang morg

(require "lib/article/notation.rkt"
         "lib/index/notation.rkt"
         morg/math
         "lib/math/type-theory/universe-level.rkt"
         "lib/math/type-theory/base.rkt"
         "lib/math/topos-theory/subtopos.rkt")

(define T "T")
(define X "X")

@notation[
  #:id (current-id)
  #:indexes @list[
    @n-index[#:key "m"]{
      @(math (modality X))
    }
  ]
  @paragraph{
    Let @(math T) be a base type theory.
    We work in @(math T).
    Let @(math X) be a subtopos.
    Then the constant sheaf and global section adjunction
    for @(math X)
    yields a lex modality on @(math (universe zero)).
    We refer to the lex modality as
    @(math (modality X)).
  }
]
