#lang morg

(require "lib/article/definition.rkt"
         (prefix-in tex: morg/math/tex)
         morg/math
         "lib/math/type-theory/space.rkt"
         "lib/math/type-theory/universe-level.rkt"
         "lib/math/type-theory/element.rkt"
         "lib/math/type-theory/model.rkt"
         "lib/math/type-theory/etale.rkt")

(define T "T")
(define i "i")
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
        Let @(math (is-Level i))
        and let @(math (C . is-elem . (Context Space i))).
        Then @(math ((Etale zero) . is-elem . (Type Space C one)))
        is petit.
      }
      @list-item{
        Let @(math (is-Level i)),
        let @(math (C . is-elem . (Context Space i))),
        and let @(math (A . is-elem . (Element Space C (Etale zero)))).
        Then @(math (A . is-elem . (Type Space C one)))
        is petit.
      }
      @list-item{
        Petit types are closed under
        the unit type,
        pair types,
        identity types,
        and products indexed over any
        @(math (A . is-elem . (Etale zero))).
      }
    ]
  }
]
