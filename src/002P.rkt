#lang morg

(require "lib/article/definition.rkt"
         "lib/index/notation.rkt"
         morg/math
         (prefix-in tex: morg/math/tex)
         "lib/math/type-theory/model.rkt"
         "lib/math/type-theory/category.rkt"
         "lib/math/type-theory/self.rkt"
         "lib/math/type-theory/universe-level.rkt"
         "lib/math/type-theory/function.rkt"
         "lib/math/type-theory/def-eq.rkt"
         "lib/math/type-theory/global-section.rkt")

(define T "T")
(define T1 (T . _ . "1"))
(define T2 (T . _ . "2"))
(define i "i")
(define C tex:Gamma)
(define A "A")
(define a "a")
(define GS (GlobalSection T2))
(define x "x")

@definition[
  #:id (current-id)
  #:indexes @list[
    @n-index[#:key "GS"]{
      @(math (GlobalSection T))
    }
  ]
  @paragraph{
    Let @(math T1) be a base type theory
    and let @(math T2) be a type theory
    internal to @(math T1).
    We work in @(math T1).
    We define a translation
    @disp{
      @(math (GS
              . is-morphism .
              T2
              Self))
    }
    as follows.
    @unordered-list[
      @list-item{
        Let @(math (is-Level i))
        and let @(math (C . is-Context . T2 i)).
        Then @(math ((GS . $ . C)
                     . def-eq .
                     ((Hom (Context T2 i)) . $* . empty-context/visible C))).
      }
      @list-item{
        Let @(math (is-Level i)),
        let @(math (C . is-Context . T2 i)),
        and let @(math (A . is-Type . T2 C i)).
        Then @(math ((GS . $ . A)
                     . def-eq .
                     (x . /-> . (Element T2 empty-context (A . $ . x))))).
      }
      @list-item{
        Let @(math (is-Level i)),
        let @(math (C . is-Context . T2 i)),
        let @(math (A . is-Type . T2 C i)),
        and let @(math (a . is-Element . T2 C A)).
        Then @(math ((GS . $ . a)
                     . def-eq .
                     (x . /-> . (a . $ . x)))).
      }
    ]
  }
]
