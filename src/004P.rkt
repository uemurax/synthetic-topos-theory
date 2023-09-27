#lang morg

(require "lib/article/proposition.rkt"
         "lib/article/proof.rkt"
         morg/math
         "lib/math/topos-theory/prop.rkt"
         "lib/math/type-theory/element.rkt")

(define T "T")

@proposition[
  #:id (current-id)
  @paragraph{
    Let @(math T) be a base type theory.
    We work in the type theory of
    spaces in @(math T).
    Then the point @(math (bottom . is-elem . Prop))
    is coétale.
  }
  #:proof @proof[
    @paragraph{
      By @ref["003Y"].
    }
  ]
]
