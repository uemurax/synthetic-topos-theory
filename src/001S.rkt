#lang morg

(require "lib/article/exercise.rkt"
         morg/math
         "lib/math/topos.rkt"
         "lib/math/category.rkt"
         "lib/math/function.rkt"
         "lib/math/classifying-topos.rkt"
         "lib/math/logos.rkt"
         "lib/math/product.rkt")

(define U "U")
(define V "V")
(define X "X")
(define T "T")
(define f "f")

@exercise[
  #:id (current-id)
  @paragraph{
    Let @(math U) be a universe
    and let @(math V) be a universe
    strictly greater than @(math U).
    Then, for any @(math U)-topos @(math X)
    and any object
    @(math (T . is-object . (ShTopos U V))),
    the map
    @disp{
      @(math ((f . /-> .
                 ((interpret X f)
                  . comp .
                  (generic-object X)))
              . is-morphism .
              ((Hom (ShTopos U V)) . $* . X T)
              ((Hom ((enlarge V) (Sh . $ . X)))
               . $* .
               (*) (interpret X T))))
    }
    is an equivalence.
    Moreover, this map is
    natural both in @(math T) and in @(math X).
  }
]
