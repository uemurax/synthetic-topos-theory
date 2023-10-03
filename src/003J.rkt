#lang morg

@section[
  #:id (current-id)
  #:title @%{Direct images}
  @paragraph{
    A morphism between toposes
    also induces the @emph{direct image functor}
    which is a right adjoint
    of the inverse image functor.
    The construction of the direct image functor
    is not so straightforward as
    that of the inverse image functor.
    We first define a special case,
    the @emph{global section functor},
    and then relativize it
    using @ref["002Y"].
  }
  (include-part "003K.rkt")
  (include-part "003N.rkt")
  (include-part "003L.rkt")
  (include-part "003M.rkt")
]
