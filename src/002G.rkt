#lang morg

(require "lib/article/rule.rkt"
         morg/math)

(define T "T")
(define S "X")

@rule[
  #:id (current-id)
  @paragraph{
    Let @(math T) be a type theory
    and let @(math S) be a topos
    in @(math T).
    Then the type theory of sheaves on @(math S)
    is a base type theory.
  }
]
