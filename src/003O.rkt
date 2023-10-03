#lang morg

(require morg/math
         "lib/math/type-theory/element.rkt"
         (prefix-in ess: "lib/math/topos-theory/essential.rkt")
         "lib/math/type-theory/category.rkt"
         "lib/math/topos-theory/sheaf.rkt"
         "lib/math/type-theory/universe-level.rkt"
         "lib/math/type-theory/function.rkt"
         "lib/math/functor.rkt"
         "lib/math/type-theory/base.rkt")

(define a "a")
(define X "X")
(define A "A")

@section[
  #:id (current-id)
  #:title @%{Essential morphisms}
  (include-part "003P.rkt")
  (include-part "003Q.rkt")
  (include-part "0047.rkt")
  @paragraph{
    For an essential point
    @(math (a . is-elem . X))
    of a topos @(math X),
    the hom functor
    @(math ((A
             . /-> .
             ((Hom (Sheaf X zero))
              . $* .
              (ess:corepr-object a) A))
            . is-functor .
            (Sheaf X zero)
            (universe zero)))
    has a right adjoint.
    Such an object is sometimes called @emph{tiny}.
  }
  (include-part "003R.rkt")
  (include-part "003S.rkt")
  @paragraph{
    The author does not know a standard name
    for the following concept,
    but it gives a nice sufficient condition
    for a point to be essential.
  }
  (include-part "003U.rkt")
  (include-part "003T.rkt")
  (include-part "0048.rkt")
]
