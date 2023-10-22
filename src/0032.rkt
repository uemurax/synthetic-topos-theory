#lang morg

(require "lib/article/definition.rkt"
         morg/math
         "lib/math/category.rkt"
         "lib/math/tuple.rkt"
         "lib/math/coproduct.rkt"
         "lib/math/product.rkt"
         "lib/math/simplicial.rkt")

(define U "U")
(define C "C")
(define I "I")

@definition[
  #:id (current-id)
  #:indexes @list[
    @index[#:key "categorically fibrant object"]{
      @(math I)-categorically fibrant object
    }
  ]
  @paragraph{
    Let @(math U) be a universe,
    let @(math C) be a @(math U)-logos,
    and let @(math I) be a
    partially ordered object in @(math C)
    with least and greatest elements.
    We say an object in @(math C) is
    @dfn{@(math I)-categorically fibrant}
    if it is internally local
    for the following morphisms.
    @unordered-list[
      @list-item{
        @(math ((tuple @face^{2} @face^{0})
                . is-morphism .
                ((std-simplex-poset I "1")
                 . (@face^{0} . _+_ . @face^{1}) .
                 (std-simplex-poset I "1"))
                (std-simplex-poset I "2")))
      }
      @list-item{
        @(math (((std-simplex-poset I "3")
                 . ((tuple (@face^{3} . comp . @face^{1})
                           (@face^{0} . comp . @face^{1}))
                    . _+_ .
                    (@degen^{0} . + . @degen^{0})) .
                 ((std-simplex-poset I "0") . + . (std-simplex-poset I "0")))
                . morphism .
                (std-simplex-poset I "0")))
      }
      @list-item{
        @(math ((tuple (tuple @degen^{0} @degen^{1})
                       (tuple @degen^{1} @degen^{0}))
                . is-morphism .
                ((std-simplex-poset I "2")
                 . (@face^{1} . _+_ . @face^{1}) .
                 (std-simplex-poset I "2"))
                ((std-simplex-poset I "1")
                 . * .
                 (std-simplex-poset I "1"))))
      }
    ]
  }
]
