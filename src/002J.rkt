#lang morg

(require "lib/article/rule.rkt"
         "lib/index/notation.rkt"
         morg/math
         (prefix-in tex: morg/math/tex)
         "lib/math/type-theory/sheaf.rkt"
         "lib/math/type-theory/element.rkt"
         "lib/math/type-theory/model.rkt")

(define T "T")
(define S tex:Sigma)

@rule[
  #:id (current-id)
  #:indexes @list[
    @n-index[#:key "w"]{
      @(math (generic-object S))
    }
  ]
  @paragraph{
    Let @(math T) be a type theory.
    We work in @(math T).
    Let @(math S) be a geometric theory.
    Then
    @(math ((generic-object S)
            . is-elem .
            (Element (Sheaf S)
                     empty-context
                     (space->sheaf S S)))).
  }
]
