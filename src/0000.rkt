#lang morg

(require morg/math)

@section[
  #:id (current-id)
  #:title @%{Logoses and toposes}
  @paragraph{
    We review the @math{2}-category of @emph{toposes}.
    Following @ref["Anel--Joyal--2021-0000"],
    we first define the @math{2}-category of @emph{logoses}
    and then define the @math{2}-category of toposes
    to be its opposite.
  }
  (include-part "0001.rkt")
  (include-part "0002.rkt")
  (include-part "000E.rkt")
  (include-part "0003.rkt")
  (include-part "0006.rkt")
  @paragraph{
    Logoses are usually defined as
    lex cocomplete categories
    that have small presentations.
    Having small presentations
    can be replaced by compactness.
  }
  (include-part "0004.rkt")
  (include-part "0005.rkt")
  (include-part "0018.rkt")
  (include-part "000J.rkt")
  (include-part "000O.rkt")
  (include-part "0007.rkt")
  (include-part "0008.rkt")
  (include-part "0009.rkt")
  #:subsections @list[
    (include-part "000A.rkt")
    (include-part "001L.rkt")
    (include-part "0015.rkt")
    (include-part "004C.rkt")
  ]
]
