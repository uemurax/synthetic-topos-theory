#lang morg

(require "lib/article/definition.rkt"
         "lib/index/notation.rkt"
         morg/math
         "lib/math/simplicial.rkt")

(define U "U")
(define C "C")
(define I "I")
(define n "n")

@definition[
  #:id (current-id)
  #:indexes @list[
    @n-index[#:key "D"]{
      @(math (std-simplex-poset I n))
    }
  ]
  @paragraph{
    Let @(math U) be a universe,
    let @(math C) be a @(math U)-logos,
    let @(math I) be a
    partially ordered object in @(math C),
    and let @(math n) be a natural number.
    We define @(math (std-simplex-poset I n))
    to be the object in @(math C)
    that classifies (non-strictly) increasing sequences
    in @(math I) of length @(math n).
    When @(math I) has
    least and greatest elements,
    face maps and degeneracy maps
    between @(math (std-simplex-poset I n))'s
    can also be defined.
  }
]
