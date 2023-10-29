#lang morg

(require "lib/article/axiom.rkt"
         morg/math
         (prefix-in l: "lib/math/type-theory/universe-level.rkt")
         "lib/math/type-theory/etale.rkt"
         "lib/math/type-theory/function.rkt"
         "lib/math/type-theory/element.rkt")

(define T "T")
(define i "i")
(define X "X")

@axiom[
  #:id (current-id)
  @paragraph{
    Let @(math T) be a base type theory.
    We work in the type theory of
    spaces in @(math T).
    @unordered-list[
      @list-item{
        Every topos is categorically fibrant.
      }
      @list-item{
        Let @(math (l:is-Level i)).
        @unordered-list[
          @list-item{
            @(math (Etale i))
            is categorically fibrant.
          }
          @list-item{
            @(math ((X . is-elem . (Etale i)) . /-> . X))
            is a left fibration.
          }
        ]
      }
    ]
  }
]
