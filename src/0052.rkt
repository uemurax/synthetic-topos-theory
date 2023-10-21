#lang morg

(require "lib/article/rule.rkt"
         morg/math
         "lib/math/type-theory/space.rkt"
         "lib/math/type-theory/universe-level.rkt"
         "lib/math/type-theory/etale.rkt"
         "lib/math/type-theory/element.rkt"
         "lib/math/type-theory/type.rkt")

(define T "T")
(define A "A")

@rule[
  #:id (current-id)
  #:indexes @list[
    @index[#:key "topos"]{
      topos
    }
  ]
  @paragraph{
    Let @(math T) be a type theory.
    We work in the type theory of
    spaces in @(math T).
    @unordered-list[
      @list-item{
        A univalent universe
        @(math (Topos . is-Type . one))
        of @dfn{toposes} is constructed.
      }
      @list-item{
        @(math (Etale zero))
        is in @(math Topos).
      }
      @list-item{
        Let @(math (A . is-elem . (Etale zero))).
        Then @(math A) is in @(math Topos).
      }
      @list-item{
        @(math Topos) is closed under
        the unit type,
        pair types,
        identity types,
        products indexed over
        any @(math (A . is-Type . zero)),
        and function types
        whose domains are in @(math (Etale zero)).
      }
    ]
  }
]
