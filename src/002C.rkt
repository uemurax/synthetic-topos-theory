#lang morg

(require "lib/article/notation.rkt"
         "lib/index/notation.rkt"
         morg/math
         (prefix-in tex: morg/math/tex)
         "lib/math/type-theory/universe-level.rkt"
         (prefix-in m: "lib/math/type-theory/model.rkt")
         "lib/math/type-theory/type.rkt"
         "lib/math/type-theory/element.rkt")

(define T "T")
(define T1 (T . _ . "1"))
(define T2 (T . _ . "2"))
(define i "i")
(define C tex:Gamma)
(define A "A")

@notation[
  #:id (current-id)
  #:indexes @list[
    @n-index[#:key "Ctx"]{
      @(math (m:Context T i))
    }
    @n-index[#:key "DType"]{
      @(math (m:Type T C i))
    }
    @n-index[#:key "D"]{
      @(math (m:Element T C A))
    }
  ]
  @paragraph{
    Let @(math T1) be a type theory
    and let @(math T2) be a type theory
    internal to @(math T1).
    We work in @(math T1).
    @unordered-list[
      @list-item{
        Let @(math (is-Level i)).
        Then @(math ((m:Context T2 i) . is-Type . (succ i)))
        denotes the type of
        contexts of level @(math i) in @(math T2).
      }
      @list-item{
        Let @(math (is-Level i))
        and let @(math (C . is-elem . (m:Context T2 i))).
        Then @(math ((m:Type T2 C i) . is-Type . (succ i)))
        denotes the type of
        types of level @(math i) in context @(math C) in @(math T2).
      }
      @list-item{
        Let @(math (is-Level i)),
        let @(math (C . is-elem . (m:Context T2 i))),
        and let @(math (A . is-elem . (m:Type T2 C i))).
        Then @(math ((m:Element T2 C A) . is-Type . i))
        denotes the type of
        elements of @(math A) in context @(math C) in @(math T2).
      }
    ]
  }
]
