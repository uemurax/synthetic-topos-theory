#lang morg

(require "lib/article/rule.rkt"
         "lib/index/notation.rkt"
         morg/math
         "lib/math/type-theory/universe-level.rkt")

(define i "i")
(define i1 (i . _ . "1"))
(define i2 (i . _ . "2"))

@rule[
  #:id (current-id)
  #:indexes @list[
    @n-index[#:key "le"]{
      @(math (i1 . <= . i2))
    }
  ]
  @paragraph{
    Let @(math (is-Level* i1 i2)).
    Then @(math (i1 . <= . i2))
    is a propositional judgment form.
  }
]
