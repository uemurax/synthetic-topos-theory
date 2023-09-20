#lang morg

(require "lib/article/rule.rkt"
         "lib/index/notation.rkt"
         morg/math
         "lib/math/type-theory/universe-level.rkt"
         "lib/math/type-theory/type.rkt"
         "lib/math/type-theory/element.rkt"
         "lib/math/type-theory/directed.rkt")

(define T "T")
(define i "i")
(define A "A")
(define a "a")
(define a1 (a . _ . "1"))
(define a2 (a . _ . "2"))

@rule[
  #:id (current-id)
  #:indexes @list[
    @n-index[#:key "=>"]{
      @(math (a1 . hom . a2))
    }
    @n-index[#:key "id"]{
      @(math id)
    }
  ]
  @paragraph{
    Let @(math T) be a type theory.
    We work in the type theory of spaces in @(math T).
    Let @(math (is-Level i)),
    let @(math (A . is-Type . i)),
    and let @(math (a1 . is-elem . A)).
    @unordered-list[
      @list-item{
        Let @(math (a2 . is-elem . A)).
        Then @(math ((a1 . hom . a2) . is-Type . i)).
      }
      @list-item{
        @(math (id . is-elem . (a1 . hom . a1))).
      }
    ]
  }
]
