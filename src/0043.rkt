#lang morg

(require "lib/article/definition.rkt"
         morg/math
         (prefix-in lo: "lib/math/topos-theory/linear-order.rkt")
         "lib/math/type-theory/element.rkt"
         "lib/math/topos-theory/type.rkt"
         "lib/math/type-theory/function.rkt"
         "lib/math/topos-theory/prop.rkt"
         "lib/math/type-theory/blank.rkt"
         "lib/math/type-theory/contractible.rkt"
         "lib/math/type-theory/tuple.rkt"
         "lib/math/id.rkt")

(define T "T")
(define x "x")
(define y "y")
(define z "z")

@definition[
  #:id (current-id)
  #:indexes @list[
    @index[#:key "topos of linear orders"]{
      topos of linear order
    }
  ]
  @paragraph{
    Let @(math T) be a base type theory.
    We work in @(math T).
    We define the
    @dfn{topos of linear orders}
    @(math lo:LinearOrder)
    by the following record type.
    @unordered-list[
      @list-item{
        @(math (lo:Carrier . is-elem . Type))
      }
      @list-item{
        @(math ((group lo:<=-symbol)
                . is-elem .
                (lo:Carrier . -> . (lo:Carrier . -> . Prop))))
      }
      @list-item{
        @(math (lo:bottom . is-elem . lo:Carrier))
      }
      @list-item{
        @(math (lo:top . is-elem . lo:Carrier))
      }
      @list-item{
        @(math (blank
                . is-elem .
                (forall (x . is-elem . lo:Carrier)
                        (x . lo:<= . x))))
      }
      @list-item{
        @(math (blank
                . is-elem .
                (forall (x y z . is-elem* . lo:Carrier)
                        ((x . lo:<= . y)
                         . -> .
                         ((y . lo:<= . z)
                          . -> .
                          (x . lo:<= . z))))))
      }
      @list-item{
        @(math (blank
                . is-elem .
                (forall (x . is-elem . lo:Carrier)
                        (IsContr
                         ((y . is-elem . lo:Carrier)
                          . * .
                          (x . lo:<= . y)
                          (y . lo:<= . x))))))
      }
      @list-item{
        @(math (blank
                . is-elem .
                (forall (x . is-elem . lo:Carrier)
                        (lo:bottom . lo:<= . x))))
      }
      @list-item{
        @(math (blank
                . is-elem .
                (forall (x . is-elem . lo:Carrier)
                        (x . lo:<= . lo:top))))
      }
      @list-item{
        @(math (blank
                . is-elem .
                (not (lo:bottom . = . lo:top))))
      }
      @list-item{
        @(math (blank
                . is-elem .
                (forall (x y . is-elem* . lo:Carrier)
                        ((x . lo:<= . y)
                         . or .
                         (y . lo:<= . x)))))
      }
    ]
  }
]
