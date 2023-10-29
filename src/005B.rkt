#lang morg

(require "lib/article/definition.rkt"
         morg/math
         (prefix-in l: "lib/math/type-theory/universe-level.rkt")
         "lib/math/type-theory/type.rkt"
         "lib/math/type-theory/element.rkt"
         "lib/math/type-theory/interval.rkt"
         "lib/math/type-theory/function.rkt")

(define T "T")
(define i "i")
(define A "A")
(define B "B")
(define x "x")

@definition[
  #:id (current-id)
  #:indexes @list[
    @index[#:key "left fibraiton"]{
      left fibration
    }
  ]
  @paragraph{
    Let @(math T) be a base type theory.
    We work in the type theory of
    spaces in @(math T).
    Let @(math (l:is-Level i)),
    let @(math (A . is-Type . i)),
    and let @(math ((B . $ . x) . is-Type . i))
    under assumption @(math (x . is-elem . A)).
    We say @(math B) is
    a @dfn{left fibration} if
    it is right orthogonal to the function
    @(math (@face^{1}
            . is-elem .
            ((std-simplex "0")
             . -> .
             (std-simplex "1")))).
  }
]
