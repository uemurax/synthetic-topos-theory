#lang morg

(require "lib/article/exercise.rkt"
         morg/math
         "lib/math/lex-cocomp.rkt"
         "lib/math/tuple.rkt")

(define U "U")
(define V "V")

@exercise[
  #:id (current-id)
  @paragraph{
    Let @(math U) be a universe
    and let @(math V) be a universe
    strictly greater than @(math U).
    Then @(math (LexCocomp U V)) is
    @(math (tuple V U))-presentable.
  }
]