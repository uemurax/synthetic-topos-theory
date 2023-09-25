#lang morg

(require "lib/article/exercise.rkt"
         morg/math
         "lib/math/topos.rkt"
         "lib/math/category.rkt"
         "lib/math/equiv.rkt"
         "lib/math/product.rkt"
         "lib/math/internal.rkt"
         "lib/math/function.rkt")

(define U "U")
(define V "V")
(define X "X")

@exercise[
  #:id (current-id)
  @paragraph{
    Let @(math U) be a universe,
    let @(math V) be a universe
    strictly greater than @(math U),
    and let @(math X) be a @(math U)-topos.
    Then we have a canonical equivalence
    @disp{
      @(math (((ShTopos U V) . slice . X)
              . equiv .
              ((Hom (Sh . $ . X))
               . $* .
               (*) (internal X (ShTopos U V)))))
    }
  }
]
