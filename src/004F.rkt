#lang morg

(require "lib/article/terminology.rkt"
         morg/math
         "lib/math/type-theory/type.rkt"
         "lib/math/type-theory/element.rkt"
         (prefix-in m: "lib/math/type-theory/model.rkt"))

(define T "T")
(define T1 (T . _ . "1"))
(define T2 (T . _ . "2"))
(define A "A")
(define i "i")

@terminology[
  #:id (current-id)
  @paragraph{
    Let @(math T1) be a type theory
    and let @(math T2) be a type theory
    internal to @(math T1).
    We work in @(math T1).
    When we mention an object in @(math T2),
    the object is understood
    in the empty context in @(math T2).
    For example,
    “let @(math (A . is-Type . i)) in @(math T2)”
    means
    “let @(math (A
                 . is-elem .
                 (m:Type T2 m:empty-context i)))”.
  }
]
