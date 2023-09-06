#lang morg

(require "lib/article/exercise.rkt"
         "lib/index/notation.rkt"
         morg/math
         "lib/math/category.rkt"
         "lib/math/topos.rkt"
         "lib/math/logos.rkt"
         "lib/math/classifying-topos.rkt"
         "lib/math/pullback.rkt"
         "lib/math/function.rkt")

(define U "U")
(define V "V")
(define X "X")
(define X1 (X . _ . "1"))
(define X2 (X . _ . "2"))
(define f "f")
(define T "T")

@exercise[
  #:id (current-id)
  #:indexes @list[
    @n-index[#:key "f#"]{
      @(math (pull-model-back f))
    }
  ]
  @paragraph{
    Let @(math U) be a universe,
    let @(math V) be a universe
    strictly greater than @(math U),
    let @(math (f . is-morphism . X1 X2))
    be a morphism of @(math U)-toposes,
    and let @(math (T . is-object . (ShTopos U V)))
    be an object.
    We can naturally define a morphism
    @(math ((pull-model-back f)
            . is-morphism .
            ((pullback f) . $ . (interpret X2 T))
            (interpret X1 T)))
    in @(math ((enlarge V) (Sh . $ . X1))).
  }
]
