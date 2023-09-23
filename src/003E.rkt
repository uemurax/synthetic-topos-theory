#lang morg

(require "lib/article/definition.rkt"
         "lib/index/notation.rkt"
         morg/math
         "lib/math/type-theory/sheaf.rkt"
         "lib/math/type-theory/space.rkt"
         "lib/math/type-theory/function.rkt"
         "lib/math/type-theory/def-eq.rkt"
         "lib/math/type-theory/global-section.rkt")

(define T "T")
(define S "X")
(define X "Z")

@definition[
  #:id (current-id)
  #:indexes @list[
    @n-index[#:key "?"]{
      @(math (space->sheaf S X))
    }
  ]
  @paragraph{
    Let @(math T) be a base type theory.
    We work in @(math T).
    Let @(math S) be a topos.
    We define a translation
    @(math (X . /-> . (space->sheaf S X)))
    from @(math Space)
    to @(math (Sheaf S)) by
    @(math ((space->sheaf S X)
            . def-eq .
            ((GlobalSection Space)
             . $ .
             (space->space S X)))).
  }
]
