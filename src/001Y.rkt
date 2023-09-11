#lang morg

(require morg/math
         "lib/math/type-theory/type.rkt")

@section[
  #:id (current-id)
  #:title @%{Core type theory}
  @paragraph{
    We will introduce several type theories.
    The @emph{core type theory}
    is the basis for
    all of those type theories.
  }
  (include-part "001Z.rkt")
  (include-part "0020.rkt")
  (include-part "0021.rkt")
  @paragraph{
    Note that
    universes that classify @(math (Type "i"))'s
    are not introduced at this moment.
  }
  @paragraph{
    By a @dfn{type theory}
    we mean an extension of the core type theory
    by rules that construct
    types, elements, and definitional equality.
  }
]
