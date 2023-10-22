#lang morg

(require "lib/article/axiom.rkt"
         "lib/index/notation.rkt"
         morg/math
         "lib/math/type-theory/interval.rkt"
         "lib/math/type-theory/element.rkt"
         "lib/math/type-theory/space.rkt"
         "lib/math/type-theory/function.rkt"
         "lib/math/type-theory/truncated.rkt"
         "lib/math/type-theory/subtype.rkt")

(define T "T")
(define X "X")

@axiom[
  #:id (current-id)
  #:indexes @list[
    @n-index[#:key "I"]{
      @(math interval)
    }
  ]
  @paragraph{
    Let @(math T) be a base type theory.
    We work in the type theory of
    spaces in @(math T).
    @unordered-list[
      @list-item{
        @(math (interval . is-elem . Topos))
      }
      @list-item{
        @(math (<=-symbol
                . is-elem .
                (interval
                 . -> .
                 (interval
                  . -> .
                  (comprehension X Topos (IsProp X))))))
      }
      @list-item{
        @(math (bottom . is-elem . interval))
      }
      @list-item{
        @(math (top . is-elem . interval))
      }
      @list-item{
        @(math <=-symbol) is a partial order on @(math interval).
      }
      @list-item{
        @(math bottom) is the least element.
      }
      @list-item{
        @(math top) is the greatest element.
      }
    ]
  }
]
