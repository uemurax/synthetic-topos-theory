#lang morg

(require "lib/article/rule.rkt"
         morg/math
         "lib/math/type-theory/universe-level.rkt"
         "lib/math/type-theory/def-eq.rkt")

(define i "i")
(define i1 (i . _ . "1"))
(define i2 (i . _ . "2"))
(define i3 (i . _ . "3"))

@rule[
  #:id (current-id)
  @paragraph{
    @unordered-list[
      @list-item{
        @(math (is-Level zero)).
      }
      @list-item{
        Let @(math (is-Level i)).
        Then @(math (is-Level (succ i))).
      }
      @list-item{
        Let @(math (is-Level i)).
        Then @(math (i . <= . i)).
      }
      @list-item{
        Let @(math (is-Level* i1 i2 i3))
        and suppose that @(math (i1 . <= . i2))
        and that @(math (i2 . <= . i3)).
        Then @(math (i1 . <= . i3)).
      }
      @list-item{
        Let @(math (is-Level* i1 i2))
        and suppose that @(math (i1 . <= . i2))
        and that @(math (i2 . <= . i1)).
        Then @(math (i1 . def-eq . i2)).
      }
      @list-item{
        Let @(math (is-Level i)).
        Then @(math (zero . <= . i)).
      }
      @list-item{
        Let @(math (is-Level i)).
        Then @(math (i . <= . (succ i))).
      }
      @list-item{
        Let @(math (is-Level* i1 i2))
        and suppose that @(math (i1 . <= . i2)).
        Then @(math ((succ i1) . <= . (succ i2))).
      }
    ]
  }
]
