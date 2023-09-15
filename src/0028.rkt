#lang morg

(require morg/math
         (prefix-in tex: morg/math/tex))

(define T "T")
(define S tex:Sigma)

@section[
  #:id (current-id)
  #:title @%{Type theory of sheaves}
  @paragraph{
    Let @(math T) be a type theory
    and let @(math S) be a geometric theory
    in @(math T).
    We introduce the
    @emph{type theory of sheaves on @(math S)}.
    It is a type theory
    internal to @(math T).
  }
  (include-part "002K.rkt")
  (include-part "002G.rkt")
  (include-part "002H.rkt")
  (include-part "002I.rkt")
  (include-part "002J.rkt")
  (include-part "002L.rkt")
]
