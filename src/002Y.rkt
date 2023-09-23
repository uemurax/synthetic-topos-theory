#lang morg

(require "lib/article/axiom.rkt"
         "lib/index/notation.rkt"
         morg/math
         "lib/math/type-theory/space.rkt"
         "lib/math/type-theory/element.rkt"
         "lib/math/type-theory/model.rkt"
         "lib/math/type-theory/sheaf.rkt"
         (prefix-in cat: "lib/math/type-theory/category.rkt")
         "lib/math/type-theory/slice.rkt"
         "lib/math/type-theory/function.rkt"
         "lib/math/type-theory/substitution.rkt")

(define T "T")
(define S "X")
(define x "x")
(define X "Z")

@axiom[
  #:id (current-id)
  #:indexes @list[
    @n-index[#:key "w"]{
      @(math (generic-global-section S))
    }
  ]
  @paragraph{
    Let @(math T) be a base type theory.
    We work in @(math T).
    Let @(math S) be a topos.
    @unordered-list[
      @list-item{
        @(math ((generic-global-section S)
                . is-elem .
                (Element (Globalization (Sheaf S) Space)
                         empty-context
                         (space->space S S)))).
      }
      @list-item{
        The translation
        @disp{
          @(math ((Space . slice . x S)
                  . cat:morphism .
                  (Globalization (Sheaf S) Space)))
        }
        defined by
        @disp{
          @(math (X
                  . /-> .
                  ((space->space S X)
                   . subst .
                   (list x (generic-global-section S)))))
        }
        is an equivalence.
      }
    ]
  }
]
