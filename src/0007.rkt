#lang morg

(require "lib/article/lemma.rkt"
         "lib/article/proof.rkt"
         morg/math
         "lib/math/logos.rkt"
         "lib/math/lex-cocomp.rkt"
         "lib/math/tuple.rkt")

(define U "U")
(define V "V")

@lemma[
  #:id (current-id)
  @paragraph{
    Let @(math U) be a universe
    and let @(math V) be a universe
    strictly greater than @(math U).
    Then @(math (Logos U))
    is closed in @(math (LexCocomp U V))
    under @(math U)-small colimits.
  }
  #:proof @proof[
    @paragraph{
      This is because
      @(math U)-compact objects in a
      @(math (tuple V U))-presentable category
      are closed under @(math U)-small colimits.
    }
  ]
]
