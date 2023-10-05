#lang morg

(require morg/math
         (prefix-in tex: morg/math/tex))

@section[
  #:id (current-id)
  #:title @%{Introduction}
  @paragraph{
    By topos we mean @(math @tex:infty)-topos.
  }
  @paragraph{
    In this under-construction document,
    we present some ideas of
    @emph{synthetic topos theory}.
  }
  @paragraph{
    Standard textbooks
    (@ref["Mac-Lane--Moerdijk--1992-0000"],
     @ref["Johnstone--2002-0000"],
     @ref["Johnstone--2002-0001"],
     and @ref["Lurie--2009-0000"] for example)
    begin by defining toposes
    as categories having certain structures.
    This is an analytic approach
    to topos theory.
  }
  @paragraph{
    In contrast,
    synthetic topos theory
    begins by introducing axioms
    that directly capture the
    core aspects of topos theory.
    To do this,
    we use the @emph{type theory of toposes}.
    This should not be confused with
    the internal language of a topos.
    In the internal language of a topos,
    types are sheaves on the topos.
    In the type theory of toposes,
    types are toposes.
    So toposes are now a primitive concept
    in this type theory,
    and we can develop topos theory
    without knowing what toposes really are.
  }
]
