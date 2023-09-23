#lang morg

(require "lib/article/proposition.rkt"
         "lib/article/proof.rkt"
         morg/math
         "lib/math/topos-theory/type.rkt")

(define T "T")

@proposition[
  #:id (current-id)
  @paragraph{
    Let @(math T) be a base type theory.
    We work in @(math T).
    Then every finitely presented point
    of @(math Type) is essential.
  }
  #:proof @proof[
    @paragraph{
      By @ref["003T"] and @ref["0040"].
    }
  ]
]
