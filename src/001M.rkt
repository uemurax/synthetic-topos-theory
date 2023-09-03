#lang morg

(require "lib/article/definition.rkt"
         morg/math
         "lib/math/category-with-etale-morphisms.rkt"
         "lib/math/category.rkt"
         "lib/math/functor.rkt"
         "lib/math/pullback.rkt")

(define U "U")
(define C "C")
(define D "D")
(define x "x")
(define y "y")
(define f "f")
(define F "F")

@definition[
  #:id (current-id)
  #:indexes @list[
    @index[#:key "category with etale morphisms"]{
      category with @(math U)-étale morphisms
    }
    @index[#:key "universal etale morphism"]{
      universal étale morphism
      in a category with @(math U)-étale morphisms.
    }
    @index[#:key "etale morphism"]{
      étale morphism
      in a category with @(math U)-étale morphisms.
    }
  ]
  @paragraph{
    Let @(math U) be a universe.
    A @dfn{category with @(math U)-étale morphisms}
    @(math C) consists of the following data.
    @unordered-list[
      @list-item{
        A category @(math (Carrier C))
        with @(math U)-small limits.
      }
      @list-item{
        A univalent morphism
        @(math ((etale-classifier-pr C)
                . is-morphism .
                (etale-classifier-pt C)
                (etale-classifier C)))
        in @(math (Carrier C))
        called the @dfn{universal étale morphism}.
        Pullbacks of @(math (etale-classifier-pr C))
        are called @dfn{étale morphisms}.
        For an object @(math (x . is-object . (Carrier C))),
        let @(math (Etale x)) denote
        the full subcategory of
        @(math ((Carrier C) . slice . x))
        spanned by the étale morphisms with codomain @(math x).
      }
      @list-item{
        All the identity morphisms in @(math (Carrier C))
        are étale,
        étale morphisms are closed under composition,
        and étale morphisms are closed under diagonal.
      }
      @list-item{
        For every object @(math (x . is-object . (Carrier C))),
        the category @(math (Etale x))
        has @(math U)-small colimits
        preserved by the inclusion
        @(math ((Etale x)
                . functor .
                ((Carrier C) . slice . x))).
      }
      @list-item{
        For every morphism
        @(math (f . is-morphism . x y))
        in @(math (Carrier C)),
        the pullback functor
        @(math ((pullback f)
                . is-functor .
                (Etale y)
                (Etale x)))
        preserves @(math U)-small colimits.
      }
      @list-item{
        @(math (etale-classifier-pr C)) is exponentiable.
      }
    ]
    A @dfn{morphism of categories with @(math U)-étale morphisms}
    is a structure-preserving functor.
    Note that preservation of universal étale morphism
    is a proposition because of univalence.
  }
]
