#lang morg

(require "lib/article/definition.rkt"
         (prefix-in tex: morg/math/tex)
         morg/math
         "lib/math/type-theory/space.rkt"
         "lib/math/type-theory/universe-level.rkt"
         "lib/math/type-theory/element.rkt"
         "lib/math/type-theory/model.rkt"
         "lib/math/type-theory/base.rkt"
         "lib/math/type-theory/etale.rkt")

(define T "T")
(define C tex:Gamma)
(define A "A")

@definition[
  #:id (current-id)
  #:indexes @list[
    @index[#:key "petit type"]{
      petit type
    }
  ]
  @paragraph{
    Let @(math T) be a type theory.
    We work in @(math T).
    We inductively define the type of
    @dfn{petit} types in @(math Space)
    as follows.
    @unordered-list[
      @list-item{
        Let @(math (C . is-elem . (Context Space one))).
        Then @(math ((Etale zero) . is-elem . (Type Space C one)))
        is petit.
      }
      @list-item{
        Let @(math (C . is-elem . (Context Space one))),
        and let @(math (A . is-elem . (Element Space C (Etale zero)))).
        Then @(math (A . is-elem . (Type Space C one)))
        is petit.
      }
      @list-item{
        Petit types are closed under
        the unit type,
        pair types,
        identity types,
        products indexed over any
        @(math (A . is-elem . (universe zero))),
        and function types whose domains are
        in @(math (Etale zero)).
      }
    ]
  }
]
