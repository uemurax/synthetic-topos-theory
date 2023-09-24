#lang morg

(require "lib/article/definition.rkt"
         "lib/index/notation.rkt"
         morg/math
         "lib/math/type-theory/element.rkt"
         "lib/math/type-theory/natural.rkt"
         "lib/math/simplicial.rkt"
         "lib/math/topos-theory/sheaf.rkt"
         "lib/math/type-theory/universe-level.rkt"
         (prefix-in lo: "lib/math/topos-theory/linear-order.rkt")
         (prefix-in ess: "lib/math/topos-theory/essential.rkt"))

(define T "T")
(define n "n")

@definition[
  #:id (current-id)
  #:indexes @list[
    @index[#:key "standard simplex"]{
      standard @(math n)-simplex
    }
    @n-index[#:key "D"]{
      @(math (std-simplex n))
    }
  ]
  @paragraph{
    Let @(math T) be a base type theory.
    We work in @(math T).
    Let @(math (n . is-elem . Natural)).
    We define the
    @dfn{standard @(math n)-simplex}
    @(math ((std-simplex n)
            . is-elem .
            (Sheaf lo:LinearOrder zero)))
    to be @(math (ess:corepr-object (lo:free n))).
  }
]
