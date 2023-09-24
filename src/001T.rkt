#lang morg

(require morg/math)

(define T "T")
(define X "X")

@section[
  #:id (current-id)
  #:title @%{Topical type theory}
  @paragraph{
    We introduce the @emph{topical type theory}.
    It consists of a bunch of type theories
    related to each other.
    Those type theories fall into three categories:
    @emph{base type theory};
    @emph{type theory of spaces};
    @emph{type theory of sheaves}.
    We begin with a base type theory @(math T).
    The type theory of spaces in @(math T)
    is a type theory @emph{internal to @(math T)}.
    @emph{Toposes} in @(math T) are certain special types
    in the type theory of spaces in @(math T).
    For every topos @(math X) in @(math T),
    the type theory of sheaves on @(math X)
    is internal to @(math T).
  }
  @paragraph{
    A base type theory (@ref["0022"])
    is a univalent type theory
    with all standard type constructors.
    This is thought of as a metatheory of topos theory.
  }
  @paragraph{
    The type theory of spaces in @(math T)
    (@ref["0027"]) is a type theory
    that has universes of @emph{étale types}.
    Although it has standard type constructors for convenience,
    the most relevant ones are
    finite limits of étale types,
    colimits of étale types,
    and exponentials by étale types.
  }
  @paragraph{
    The type theory of sheaves on @(math X)
    (@ref["0028"]) is again a base type theory.
    This means that
    we have the type theory of spaces
    @emph{in the type theory of sheaves on @(math X)}.
  }
  @paragraph{
    We need some axioms
    to relate these kinds of type theories.
    One axiom asserts that
    a base type theory is embedded
    into the type theory of spaces in it,
    and its image is the étale types.
    Another axiom asserts that
    the type theory of spaces
    in the type theory of sheaves on a topos @(math X)
    is equivalent to
    the type theory of spaces @emph{over @(math X)}.
    These axioms are assumed in
    @emph{all} base type theories,
    so they are more powerful than they look.
  }
  #:subsections @list[
    (include-part "001U.rkt")
    (include-part "001Y.rkt")
    (include-part "0022.rkt")
    (include-part "0024.rkt")
    (include-part "0027.rkt")
    (include-part "0028.rkt")
    (include-part "002V.rkt")
  ]
]
