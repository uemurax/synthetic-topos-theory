#lang morg

(require "lib/article/definition.rkt"
         morg/math
         (prefix-in l: "lib/math/type-theory/universe-level.rkt")
         "lib/math/type-theory/type.rkt"
         "lib/math/type-theory/element.rkt"
         "lib/math/type-theory/function.rkt"
         "lib/math/type-theory/interval.rkt"
         "lib/math/type-theory/tuple.rkt"
         "lib/math/type-theory/colimit.rkt"
         "lib/math/type-theory/category.rkt")

(define T "T")
(define i "i")
(define A "A")
(define f "f")

@definition[
  #:id (current-id)
  #:indexes @list[
    @index[#:key "categorically fibrant type"]{
      categorically fibrant type
    }
  ]
  @paragraph{
    Let @(math T) be a base type theory.
    We work in the type theory of
    spaces in @(math T).
    Let @(math (l:is-Level i)).
    We say a type @(math (A . is-Type . i))
    is @dfn{categorical fibrant} if
    it is local for the following functions.
    @unordered-list[
      @list-item{
        @(math ((tuple @face^{2} @face^{0})
                . is-elem .
                (((std-simplex "1")
                  . (@face^{0} . _+_ . @face^{1}) .
                  (std-simplex "1"))
                 . -> .
                 (std-simplex "2"))))
      }
      @list-item{
        @(math (((std-simplex "3")
                 . ((tuple (@face^{3} . comp . @face^{1})
                           (@face^{0} . comp . @face^{1}))
                    . _+_ .
                    (@degen^{0} . + . @degen^{0})) .
                 ((std-simplex "0") . + . (std-simplex "0")))
                . -> .
                (std-simplex "0")))
      }
      @list-item{
        @(math ((tuple (tuple @degen^{0} @degen^{1})
                       (tuple @degen^{1} @degen^{0}))
                . is-elem .
                (((std-simplex "2")
                  . (@face^{1} . _+_ . @face^{1}) .
                  (std-simplex "2"))
                 . -> .
                 ((std-simplex "1")
                  . * .
                  (std-simplex "1")))))
      }
    ]
  }
]
