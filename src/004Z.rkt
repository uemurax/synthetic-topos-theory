#lang morg

(require "lib/article/exercise.rkt"
         "lib/article/hint.rkt"
         morg/math
         "lib/math/lex-cocomp.rkt")

(define U "U")
(define V "V")
(define C "C")

@exercise[
  #:id (current-id)
  @paragraph{
    Let @(math U) be a universe
    and let @(math V) be a universe
    strictly greater than @(math U).
    Then a @(math V)-small lex @(math U)-cocomplete
    category @(math C) is @(math U)-presentable
    if and only if
    it is @(math U)-compact
    in @(math (LexCocomp U V)).
  }
  #:proof @hint[
    @paragraph{
      The “only if” part follows from
      the following facts/observations.
      @unordered-list[
        @list-item{
          If @(math C) is a @(math U)-presentable
          lex @(math U)-cocomplete category,
          then it is a lex localization
          of the category of @(math U)-small presheaves
          on a @(math U)-small lex category.
        }
        @list-item{
          A lex localization of
          a @(math U)-presentable
          lex @(math U)-cocomplete category
          is a coinverter
          in @(math (LexCocomp U V)).
        }
        @list-item{
          The category of @(math U)-small presheaves
          on a @(math U)-small lex category
          is @(math U)-compact
          in @(math (LexCocomp U V)).
        }
      ]
    }
    @paragraph{
      For the “if” part, observe that
      the @(math U)-compact objects in
      @(math (LexCocomp U V)) are
      constructible under @(math U)-small colimits
      from the free lex @(math U)-cocomplete category
      over one object.
      Then the proof proceeds by induction.
      @unordered-list[
        @list-item{
          The free lex @(math U)-cocomplete category
          over one object is
          the category of @(math U)-small presheaves
          on the free lex category over one object.
          Thus, it is @(math U)-presentable.
        }
        @list-item{
          @(math U)-presentable
          lex @(math U)-cocomplete categories
          are closed under @(math U)-small colimits
          in @(math (LexCocomp U V)).
          This is proved by
          tracking the construction of colimits of
          @(math U)-presentable
          lex @(math U)-cocomplete categories
          given in Section 6.3.4 of
          @ref["Lurie--2009-0000"].
          The key observation is that
          colimits of @(math U)-presentable
          lex @(math U)-cocomplete categories
          are decomposed as
          colimits of @(math U)-small lex categories
          and lex localizations
          both of which are colimits
          in @(math (LexCocomp U V)).
        }
      ]
    }
  ]
]
