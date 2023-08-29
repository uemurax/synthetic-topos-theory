#lang morg

(require "lib/article/proposition.rkt"
         "lib/article/proof.rkt"
         morg/math
         "lib/math/topos.rkt")

(define U "U")

@proposition[
  #:id (current-id)
  @paragraph{
    Let @(math U) be a universe.
    Then @(math (Topos U)) has finite limits.
  }
  #:proof @proof[
    @paragraph{
      By @ref["0007"].
    }
  ]
]
