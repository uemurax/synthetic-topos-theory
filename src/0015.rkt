#lang morg

(require morg/math
         "lib/math/action.rkt"
         "lib/math/function.rkt"
         "lib/math/tuple.rkt"
         "lib/math/topos.rkt")

(define U "U")
(define V "V")
(define C "C")
(define X "X")

@section[
  #:id (current-id)
  #:title @%{Sheaves on @(math (Topos1 U))}
  @paragraph{
    The category @(math (Topos1 U))
    is type-theoretically not nice
    because it is not locally cartesian closed.
    We consider embedding it into
    a logos (in a larger universe).
  }
  (include-part "0016.rkt")
  (include-part "0019.rkt")
  (include-part "001A.rkt")
  (include-part "001B.rkt")
  (include-part "001C.rkt")
  (include-part "001D.rkt")
  (include-part "002Z.rkt")
  @paragraph{
    The object @(math object-classifier)
    in @(math (Topos1 U))
    classifies @(math U)-small sheaves
    by @ref["000Z"].
    In @(math (ShTopos U V)),
    we can construct objects
    that classify @emph{large} sheaves.
  }
  (include-part "001E.rkt")
  (include-part "001F.rkt")
  (include-part "001G.rkt")
  (include-part "001H.rkt")
  (include-part "001I.rkt")
  (include-part "001J.rkt")
  (include-part "001K.rkt")
  @paragraph{
    We can restore part of the
    @math{2}-categorical structure of
    @(math (Topos U)).
  }
  (include-part "0053.rkt")
  (include-part "0054.rkt")
  (include-part "0030.rkt")
  (include-part "0031.rkt")
  @paragraph{
    If the functor
    @(math ((tuple C X) . /-> . (C . action-l . X)))
    preserved colimits on each variable,
    then it determined
    a complete and cocomplete @math{2}-category structure.
    However, it seems not to preserve
    colimits on variable @(math C).
    We still have a @math{2}-category structure
    among those objects who
    “believe that the functor
    @(math ((tuple C X) . /-> . (C . action-l . X)))
    preserves colimits on variable @(math C)”.
  }
  (include-part "0032.rkt")
  (include-part "0033.rkt")
  (include-part "0034.rkt")
  (include-part "0035.rkt")
  (include-part "0036.rkt")
  @paragraph{
    @(math (Topos1 U)) itself
    appears in @(math (ShTopos U V))
    as a universe.
  }
  (include-part "0050.rkt")
  (include-part "0051.rkt")
]
