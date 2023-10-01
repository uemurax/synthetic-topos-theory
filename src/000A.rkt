#lang morg

(require morg/math
         "lib/math/category.rkt"
         "lib/math/pullback.rkt"
         "lib/math/functor.rkt")

(define C "C")
(define x "x")

@section[
  #:id (current-id)
  #:title @%{Étale morphisms}
  @paragraph{
    @emph{Étale morphisms} play the central role
    in topos theory.
    They are defined in terms of slice categories.
  }
  @paragraph{
    Recall that
    slices of lex categories
    coclassify global sections.
  }
  (include-part "000B.rkt")
  (include-part "000C.rkt")
  @paragraph{
    The same is true for lex cocomplete categories.
  }
  (include-part "000D.rkt")
  @paragraph{
    There is a @emph{generic} slice category.
  }
  (include-part "000F.rkt")
  (include-part "000G.rkt")
  (include-part "000H.rkt")
  (include-part "000X.rkt")
  @paragraph{
    A morphism of logoses is @emph{étale} if
    it is equivalent to
    @(math ((pullback x)
            . is-functor .
            C (C . slice . x)))
    for some @(math x).
    We see that @(math x) is unique.
  }
  (include-part "0010.rkt")
  (include-part "000I.rkt")
  (include-part "0011.rkt")
  (include-part "000V.rkt")
  @paragraph{
    Let us reverse morphisms.
  }
  (include-part "000K.rkt")
  (include-part "000Z.rkt")
  (include-part "000L.rkt")
  (include-part "000Y.rkt")
  (include-part "000M.rkt")
  (include-part "000N.rkt")
  (include-part "000S.rkt")
  (include-part "000P.rkt")
  (include-part "000Q.rkt")
  (include-part "000R.rkt")
  (include-part "000T.rkt")
  (include-part "000U.rkt")
  (include-part "000W.rkt")
  (include-part "0012.rkt")
  (include-part "0013.rkt")
  (include-part "0014.rkt")
  (include-part "0017.rkt")
]
