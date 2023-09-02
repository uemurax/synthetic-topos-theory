#lang morg

(require "lib/article/definition.rkt"
         "lib/index/notation.rkt"
         morg/math
         "lib/math/topos.rkt"
         "lib/math/logos.rkt"
         "lib/math/functor.rkt"
         "lib/math/category.rkt"
         "lib/math/function.rkt"
         "lib/math/id.rkt")

(define U "U")
(define V "V")
(define W "W")
(define X "X")

@definition[
  #:id (current-id)
  #:indexes @list[
    @n-index[#:key "A"]{
      @(math (object-classifier^ V))
    }
  ]
  @paragraph{
    Let @(math U) be a universe,
    let @(math V) be a universe
    greater than or equal to @(math U),
    and let @(math W) be a universe
    strictly greater than @(math V).
    We define a presheaf
    @disp{
      @(math ((object-classifier^ V)
              . is-functor .
              (opposite (Topos1 U))
              W))
    }
    by
    @disp{
      @(math (((object-classifier^ V) . $ . X)
              . = .
              (Object . $ . ((enlarge V) (Sh . $ . X)))))
    }
  }
]
