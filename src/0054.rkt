#lang morg

(require "lib/article/exercise.rkt"
         morg/math
         "lib/math/simplicial.rkt"
         "lib/math/tuple.rkt"
         "lib/math/product.rkt"
         "lib/math/topos-2.rkt"
         "lib/math/topos.rkt"
         "lib/math/function.rkt"
         "lib/math/category.rkt"
         "lib/math/coproduct.rkt"
         "lib/math/equiv.rkt"
         "lib/math/arithmetic.rkt")

(define U "U")
(define n "n")

@exercise[
  #:id (current-id)
  @paragraph{
    Let @(math U) be a universe.
    @unordered-list[
      @list-item{
        @(math ((tuple (cat->topos . $ . @degen^{1})
                       (cat->topos . $ . @degen^{0}))
                . is-morphism .
                (cat->topos . $ . @std-simplex{2})
                ((cat->topos . $ . @std-simplex{1})
                 . * .
                 (cat->topos . $ . @std-simplex{1}))))
        determines a partial order
        in @(math (Topos U)).
        We refer to this partially ordered object
        in @(math (Topos U))
        as @(math interval).
      }
      @list-item{
        @(math ((cat->topos . $ . @face^{1})
                . is-morphism .
                (cat->topos . $ . @std-simplex{0})
                (cat->topos . $ . @std-simplex{1})))
        determines the least element of @(math interval).
      }
      @list-item{
        @(math ((cat->topos . $ . @face^{0})
                . is-morphism .
                (cat->topos . $ . @std-simplex{0})
                (cat->topos . $ . @std-simplex{1})))
        determines the greatest element of @(math interval).
      }
      @list-item{
        @(math ((+)
                . equiv .
                ((cat->topos . $ . @std-simplex{0})
                 . ((cat->topos . $ . @face^{1})
                    . _*_ .
                    (cat->topos . $ . @face^{0})) .
                 (cat->topos . $ . @std-simplex{0}))))
      }
      @list-item{
        Let @(math (n . >= . "3")) be an integer.
        Then the morphism
        @disp{
          @(math ((tuple (cat->topos . $ . (degen^ (n . - . "1")))
                         ((group (cat->topos . $ . (degen^ "0"))) . ^ . (n . - . "2")))
                  . is-morphism .
                  (cat->topos . $ . (std-simplex n))
                  ((cat->topos . $ . (std-simplex (n . - . "1")))
                   . (((group (cat->topos . $ . @degen^{0})) . ^ . (n . - . "2"))
                      . _*_ .
                      (cat->topos . $ . @degen^{1})) .
                   (cat->topos . $ . (std-simplex "2")))))
        }
        is an equivalence.
        (This means that @(math (cat->topos . $ . (std-simplex n)))
        is the object of
        increasing sequences in @(math interval)
        of length @(math n)).
      }
    ]
  }
]
