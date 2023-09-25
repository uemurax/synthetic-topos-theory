#lang morg

(require "lib/article/definition.rkt"
         morg/math
         "lib/math/type-theory/etale.rkt"
         "lib/math/type-theory/universe-level.rkt"
         "lib/math/type-theory/element.rkt"
         "lib/math/type-theory/base.rkt")

(define T "T")
(define A "A")

@definition[
  #:id (current-id)
  #:indexes @list[
    @index[#:key "topos"]{
      topos
    }
  ]
  @paragraph{
    Let @(math T) be a type theory.
    We work in
    the type theory of spaces in @(math T).
    We inductively define the type of
    @dfn{toposes} as follows.
    @unordered-list[
      @list-item{
        @(math ((Etale zero) . is-elem . (universe one))) is a topos.
      }
      @list-item{
        Let @(math (A . is-elem . (Etale zero))).
        Then @(math (A . is-elem . (universe one))) is a topos.
      }
      @list-item{
        Toposes are closed (in @(math (universe one))) under
        the unit type,
        pair types,
        identity types,
        products indexed over any
        @(math (A . is-elem . (universe zero)))
        in @(math T),
        and function types
        whose domains are in @(math (Etale zero)).
      }
    ]
  }
]
