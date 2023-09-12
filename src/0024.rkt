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
        A construction in @(math T1) cannot have
        assumptions from @(math T2).
      }
      @list-item{
        @(math T2) is an
        @emph{algebraic model of type theory}
        in @(math T1).
      }
    ]
  }
]
