#lang morg

(require "lib/article/definition.rkt"
         "lib/index/notation.rkt"
         morg/math
         "lib/math/type-theory/universe-level.rkt"
         "lib/math/type-theory/type.rkt"
         "lib/math/type-theory/function.rkt"
         "lib/math/type-theory/element.rkt"
         "lib/math/type-theory/product.rkt"
         "lib/math/type-theory/def-eq.rkt")

(define T "T")
(define T1 (T . _ . "1"))
(define T2 (T . _ . "2"))
(define i "i")
(define A "A")
(define B "B")
(define x "x")
(define b "b")
(define a "a")
(define f "f")

@definition[
  #:id (current-id)
  #:indexes @list[
    @index[#:key "product"]{
      product
    }
    @n-index[#:key "Pi"]{
      @(math (product x A (B . $ . x)))
    }
    @n-index[#:key "pack"]{
      @(math (pack x (b . $ . x)))
    }
    @n-index[#:key "unpack"]{
      @(math (unpack a f))
    }
  ]
  @paragraph{
    Let @(math T1) be a type theory
    and let @(math T2) be a type theory
    internal to @(math T1).
    We work in @(math T2).
    Let @(math (is-Level i)),
    let @(math (A . is-Type . i)) in @(math T1),
    and let @(math ((B . $ . x) . is-Type . i))
    under assumption @(math (x . is-elem . A)).
    We say @(math T2) has the
    @dfn{product of @(math B)}
    if the following rules are derivable.
    @unordered-list[
      @list-item{
        @(math ((product x A (B . $ . x))
                . is-Type . i)).
      }
      @list-item{
        Let @(math ((b . $ . x)
                    . is-elem .
                    (B . $ . x)))
        under assumption @(math (x . is-elem . A)).
        Then @(math ((pack x (b . $ . x))
                     . is-elem .
                     (product x A B))).
      }
      @list-item{
        Let @(math (a . is-elem . A))
        and let @(math (f . is-elem . (product x A B))).
        Then @(math ((unpack a f)
                     . is-elem .
                     (B . $ . a))).
      }
      @list-item{
        Let @(math (a . is-elem . A))
        and let @(math ((b . $ . x)
                        . is-elem .
                        (B . $ . x)))
        under assumption @(math (x . is-elem . A)).
        Then @(math ((unpack a (pack x (b . $ . x)))
                     . def-eq .
                     (b . $ . a))).
      }
      @list-item{
        Let @(math (f . is-elem . (product x A B))).
        Then @(math (f . def-eq .
                       (pack x (unpack x f)))).
      }
    ]
  }
]
