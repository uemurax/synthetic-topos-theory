#lang morg

(require "lib/article/exercise.rkt"
         morg/math
         "lib/math/lex-cocomp.rkt")

(define U "U")
(define V "V")
(define C "C")

@exercise[
  #:id (current-id)
  @paragraph{
    Let @(math U) be a universe
    and let @(math V) be a universe
    strictly greater than @(math U).
    Then a @(math V)-small lex @(math U)-cocomplete
    category @(math C) is @(math U)-presentable
    if and only if
    it is @(math U)-compact
    in @(math (LexCocomp U V)).
  }
]
