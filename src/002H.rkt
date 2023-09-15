#lang morg

(require "lib/article/rule.rkt"
         morg/math
         (prefix-in tex: morg/math/tex))

(define T "T")
(define S tex:Sigma)

@rule[
  #:id (current-id)
  @paragraph{
    Let @(math T) be a type theory
    and let @(math S) be a geometric theory
    in @(math T).
    Then the type theory of sheaves on @(math S)
    has all products and coproducts.
  }
]
