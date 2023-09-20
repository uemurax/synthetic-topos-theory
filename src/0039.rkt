#lang morg

(require "lib/article/rule.rkt"
         "lib/index/notation.rkt"
         morg/math
         "lib/math/type-theory/universe-level.rkt"
         "lib/math/type-theory/directed.rkt"
         "lib/math/type-theory/type.rkt"
         "lib/math/type-theory/element.rkt"
         "lib/math/type-theory/function.rkt")

(define T "T")
(define i "i")
(define A "A")
(define B "B")
(define a "a")
(define a1 (a . _ . "1"))
(define a2 (a . _ . "2"))
(define f "f")
(define b "b")
(define b1 (b . _ . "1"))
(define b2 (b . _ . "2"))
(define x "x")

@rule[
  #:id (current-id)
  #:indexes @list[
    @n-index[#:key "=>"]{
      @(math (b1 . (hom-over B f) . b2))
    }
    @n-index[#:key "id"]{
      @(math id-over)
    }
  ]
  @paragraph{
    Let @(math T) be a type theory.
    We work in the type theory of spaces in @(math T).
    Let @(math (is-Level i)),
    let @(math (A . is-Type . i)),
    let @(math ((B . $ . x) . is-Type . i))
    under assumption @(math (x . is-elem . A)),
    let @(math (a1 . is-elem . A)),
    and let @(math (b1 . is-elem . (B . $ . a1))).
    @unordered-list[
      @list-item{
        Let @(math (a2 . is-elem . A)),
        let @(math (b2 . is-elem . (B . $ . a2))),
        and let @(math (f . is-elem . (a1 . hom . a2))).
        Then @(math ((b1 . (hom-over B f) . b2)
                     . is-Type . i)).
      }
      @list-item{
        @(math (id-over
                . is-elem .
                (b1 . (hom-over B id) . b1))).
      }
    ]
  }
]
