#lang morg

(require "lib/article/definition.rkt"
         "lib/index/notation.rkt"
         morg/math
         (prefix-in tex: morg/math/tex)
         "lib/math/type-theory/sheaf.rkt"
         "lib/math/type-theory/function.rkt"
         "lib/math/type-theory/universe-level.rkt"
         "lib/math/type-theory/etale.rkt"
         "lib/math/type-theory/def-eq.rkt"
         "lib/math/type-theory/base.rkt")

(define T "T")
(define S tex:Sigma)
(define X "X")
(define i "i")

@definition[
  #:id (current-id)
  #:indexes @list[
    @n-index[#:key "[X]"]{
      @(math (space->sheaf S X))
    }
  ]
  @paragraph{
    Let @(math T) be a type theory
    and let @(math S) be a geometric theory
    in @(math T).
    We define a translation
    @(math (X . /-> . (space->sheaf S X)))
    from the type theory of spaces in @(math T)
    to the type theory of sheaves on @(math S)
    as follows.
    @unordered-list[
      @list-item{
        Let @(math (is-Level i)).
        Then
        @(math ((space->sheaf S (Etale i))
                . def-eq .
                (universe i))).
      }
      @list-item{
        @(math (X . /-> . (space->sheaf S X)))
        commutes with all the type constructors
        of the type theory of spaces in @(math T).
      }
    ]
  }
]
