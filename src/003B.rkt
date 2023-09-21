#lang morg

(require "lib/article/definition.rkt"
         "lib/index/notation.rkt"
         morg/math
         (prefix-in tex: morg/math/tex)
         "lib/math/topos-theory/sheaf.rkt"
         "lib/math/type-theory/universe-level.rkt"
         "lib/math/type-theory/model.rkt"
         "lib/math/type-theory/etale.rkt"
         "lib/math/type-theory/element.rkt"
         "lib/math/type-theory/space.rkt")

(define T "T")
(define i "i")
(define S tex:Sigma)
(define x "x")

@definition[
  #:id (current-id)
  #:indexes @list[
    @index[#:key "sheaf"]{
      sheaf
    }
    @n-index[#:key "S"]{
      @(math (Sheaf S i))
    }
  ]
  @paragraph{
    Let @(math T) be a base type theory.
    We work in @(math T).
    Let @(math (is-Level i))
    and let @(math S) be a geometric theory.
    We define the category
    @(math (Sheaf S i))
    of @dfn{sheaves on @(math S)} of level @(math i)
    to be
    @(math (Element Space (x . is-elem . S) (Etale i))).
  }
]
