#lang morg

(require morg/math)

(define T "T")
(define T1 (T . _ . "1"))
(define T2 (T . _ . "2"))

@section[
  #:id (current-id)
  #:title @%{Internal type theories}
  @paragraph{
    A type theory can be @emph{internal}
    to another type theory.
  }
  @paragraph{
    Let @(math T1) be a type theory
    and let @(math T2) be a type theory
    internal to @(math T1).
    @unordered-list[
      @list-item{
        A construction in @(math T2) may have
        some assumptions from @(math T1).
      }
      @list-item{
        @(math T2) is an
        @emph{algebraic model of type theory}
        in @(math T1).
      }
    ]
  }
  @paragraph{
    We leave it @emph{unspecified}
    how the concept of internal type theory
    is formalized.
    An algebraic model of type theory
    is to be something like
    a contextual category @ref["Cartmell--1978-0000"],
    a category with attributes @ref["Cartmell--1978-0000"],
    or a category with families @ref["Dybjer--1996-0000"]
    but a higher dimensional one.
    We do not know how to write down its coherence laws.
  }
  @paragraph{
    An internal type theory is
    more precisely a type theory
    every small fragment of which
    is internal to another type theory.
  }
  (include-part "002C.rkt")
  @paragraph{
    We consider products and coproducts
    in internal type theories.
  }
  (include-part "0025.rkt")
  (include-part "0026.rkt")
  @paragraph{
    When a type theory has enough universes,
    it is a type theory internal to itself.
  }
  (include-part "002N.rkt")
  @paragraph{
    We introduce the global section “functor”
    and its “left adjoint”.
  }
  (include-part "002P.rkt")
  (include-part "002Q.rkt")
  (include-part "002R.rkt")
  (include-part "002T.rkt")
  (include-part "004F.rkt")
]
