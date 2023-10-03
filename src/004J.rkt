#lang morg

(require "lib/article/exercise.rkt"
         morg/math
         "lib/math/topos-theory/subtopos.rkt")

(define T "T")
(define X "X")

@exercise[
  #:id (current-id)
  @paragraph{
    Let @(math T) be a base type theory.
    We work in @(math T).
    Let @(math X) be a subtopos.
    Then the lex modality @(math (modality X))
    is accessible.
    (This might require additional axioms.)
  }
]
