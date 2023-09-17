#lang morg

(require "lib/article/notation.rkt"
         "lib/index/notation.rkt"
         morg/math
         (prefix-in tex: morg/math/tex)
         "lib/math/type-theory/self.rkt"
         "lib/math/type-theory/universe-level.rkt"
         "lib/math/type-theory/base.rkt"
         "lib/math/type-theory/model.rkt"
         "lib/math/type-theory/def-eq.rkt"
         "lib/math/type-theory/element.rkt"
         "lib/math/type-theory/function.rkt")

(define T "T")
(define i "i")
(define C tex:Gamma)
(define A "A")
(define x "x")

@notation[
  #:id (current-id)
  #:indexes @list[
    @index[#:key "self-internalization"]{
      self-internalization of @(math T)
    }
    @n-index[#:key "Self"]{
      @(math Self)
    }
  ]
  @paragraph{
    Let @(math T) be a base type theory.
    The type theory @(math T) itself
    is regarded as a type theory
    internal to @(math T)
    which we call the
    @dfn{self-internalization of @(math T)}.
    Inside @(math T),
    the self-internalization of @(math T)
    is referred to as @(math Self).
    More precisely, @(math Self)
    is described as follows.
    We work in @(math T).
    @unordered-list[
      @list-item{
        Let @(math (is-Level i)).
        Then @(math ((Context Self i)
                     . def-eq .
                     (universe i))).
      }
      @list-item{
        Let @(math (is-Level i))
        and let @(math (C . is-elem . (Context Self i))).
        Then @(math ((Type Self C i)
                     . def-eq .
                     (C . -> . (universe i)))).
      }
      @list-item{
        Let @(math (is-Level i)),
        let @(math (C . is-elem . (Context Self i))),
        and let @(math (A . is-elem . (Type Self C i))).
        Then @(math ((Element Self C A)
                     . def-eq .
                     ((x . is-elem . C)
                      . -> .
                      (A . $ . x)))).
      }
    ]
  }
]
