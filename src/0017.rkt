#lang morg

(require "lib/article/definition.rkt"
         morg/math
         "lib/math/topos.rkt"
         "lib/math/functor.rkt")

(define U "U")
(define I "I")
(define X "X")
(define Y "Y")

@definition[
  #:id (current-id)
  #:indexes @list[
    @index[#:key "etale colimit"]{
      étale colimit
    }
  ]
  @paragraph{
    Let @(math U) be a universe,
    let @(math I) be a @(math U)-small category,
    and let @(math (X . is-functor . I (Topos U)))
    be a functor.
    Suppose that @(math X) factors through
    the domain projection
    @(math ((Etale Y) . functor . (Topos U)))
    for some @(math U)-topos @(math Y).
    By @ref["0013"] and @ref["0014"],
    the colimit of @(math X) exists.
    We call colimits obtained in this way
    @dfn{étale colimits}.
  }
]
