#lang morg

(require morg/math
         (prefix-in tex: morg/math/tex))

(define oo1 @(math @paren{@|tex:infty|, 1}))
(define n "n")

@section[
  #:id (current-id)
  #:title @%{Linear orders and simplicial types}
  @paragraph{
    We want to use @emph{simplicial types}
    in homotopy type theory.
    They will be used to define
    the type of @|oo1|-categories.
    However, simplicial types are
    functors to the @|oo1|-category of types.
    To define the type of those functors,
    we have to already know what @|oo1|-categories are,
    so we get stuck.
  }
  @paragraph{
    A good news is that
    the category of simplicial types is
    the category of sheaves on the
    @emph{topos of linear orders};
    see, for example, Section VIII.8 of
    @ref["Mac-Lane--Moerdijk--1992-0000"].
    Thus, in a type theory
    with a generic linear order,
    we can do some simplicial type theory
    and then some @|oo1|-category theory.
    This is indeed the idea of
    synthetic @|oo1|-category theory
    @ref["Riehl--Shulman--2017-0000"].
  }
  @paragraph{
    The type theory proposed in
    @ref["Riehl--Shulman--2017-0000"]
    is intended to be the
    internal language of the
    category of simplicial types.
    However, some important properties
    of this category is not internal.
    For example,
    the standard @(math n)-simplex is tiny.
    Tininess refers to the hom functor
    to the “base” category of types.
    To speak about tininess in the internal language,
    some base type theory would be needed.
    Our topical type theory perfectly fits.
  }
  (include-part "0043.rkt")
  (include-part "0045.rkt")
  (include-part "0044.rkt")
  (include-part "004A.rkt")
  (include-part "0046.rkt")
  (include-part "0049.rkt")
]
