#lang morg

(require "lib/article/exercise.rkt"
         morg/math
         (prefix-in tex: morg/math/tex)
         "lib/math/type-theory/universe-level.rkt"
         "lib/math/type-theory/model.rkt"
         "lib/math/type-theory/sheaf.rkt"
         "lib/math/type-theory/space.rkt"
         (prefix-in t: "lib/math/type-theory/type.rkt")
         "lib/math/type-theory/etale.rkt")

(define T "T")
(define S tex:Sigma)
(define i "i")
(define A "A")

@exercise[
  #:id (current-id)
  @paragraph{
    Let @(math T) be a base type theory,
    and let @(math S) be a geometric theory
    in @(math T).
    We work in @(math (Globalization (Sheaf S) Space)).
    Let @(math (is-Level i)).
    @unordered-list[
      @list-item{
        @(math (t:Type (succ i))) has products and coproducts
        indexed over any
        @(math (A . t:is-Type . (succ i)))
        in @(math T).
      }
      @list-item{
        @(math (Etale i)) is closed under coproducts
        indexed over any
        @(math (A . t:is-Type . i))
        in @(math T).
      }
    ]
  }
]
