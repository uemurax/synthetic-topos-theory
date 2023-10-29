#lang morg

(require morg/math
         "lib/math/type-theory/interval.rkt")

(define T "T")

@section[
  #:id (current-id)
  #:title @%{Type theory of spaces}
  @paragraph{
    Given a type theory @(math T),
    we introduce the
    @emph{type theory of spaces in @(math T)}.
    It is a type theory internal to @(math T).
  }
  @paragraph{
    Our primary interest is
    the type theory of @emph{toposes} (@ref["0052"]),
    but it lacks general function types
    and unbounded hierarchy of universes.
    For convenience,
    the type theory of toposes is
    embedded into the type theory of spaces
    which has richer type-theoretic structures.
  }
  (include-part "002B.rkt")
  (include-part "0029.rkt")
  (include-part "002A.rkt")
  (include-part "0052.rkt")
  @paragraph{
    The type theory of toposes
    should have a @math{2}-categorical structure.
    Following @ref["Riehl--Shulman--2017-0000"],
    we use an interval.
  }
  (include-part "0057.rkt")
  @paragraph{
    @(math interval) is different from
    the interval of @ref["Riehl--Shulman--2017-0000"]
    in that @(math interval) is
    not assumed to be totally ordered.
  }
  (include-part "0058.rkt")
  (include-part "0059.rkt")
  @paragraph{
    The locality for the first two functions
    in @ref["0059"] is
    the @emph{Segal} condition
    and the @emph{Rezk} condition, respectively.
    Since our interval @(math interval)
    is not totally ordered,
    we need the locality for the third function
    for categorically fibrant types
    to be well-behaved.
    With this adjustment,
    categorically fibrant types will be
    essentially the same as
    Rezk types of @ref["Riehl--Shulman--2017-0000"].
  }
  (include-part "005B.rkt")
  (include-part "005C.rkt")
  (include-part "005D.rkt")
  (include-part "004B.rkt")
  #:subsections @list[
  ]
]
