#lang morg

(require "lib/article/definition.rkt"
         "lib/index/notation.rkt"
         morg/math
         "lib/math/lex-cocomp.rkt"
         "lib/math/functor.rkt"
         "lib/math/logos.rkt"
         "lib/math/function.rkt")

(define U "U")
(define V "V")
(define W "W")
(define C "C")

@definition[
  #:id (current-id)
  #:indexes @list[
    @index[#:key "enlargement"]{
      @(math V)-enlargement
    }
    @n-index[#:key "Uparrow"]{
      @(math ((enlarge V) C))
    }
  ]
  @paragraph{
    Let @(math U) be a universe,
    let @(math V) be a universe
    greater than or equal to @(math U),
    and let @(math W) be a universe
    strictly greater than @(math V).
    The forgetful functor
    @(math ((LexCocomp V W)
            . functor .
            (LexCocomp U W)))
    has a left adjoint.
    This left adjoint takes
    @(math U)-compact objects in @(math (LexCocomp U W))
    to @(math V)-compact objects in @(math (LexCocomp V W))
    and thus induces a functor
    @(math ((C . /-> . ((enlarge V) C))
            . is-functor .
            (Logos U)
            (Logos V))).
    For a @(math U)-logos @(math C),
    the @(math V)-logos @(math ((enlarge V) C))
    is called the
    @dfn{@(math V)-enlargement of @(math C)}.
    Notice that the choice of @(math W) does not matter.
  }
]
