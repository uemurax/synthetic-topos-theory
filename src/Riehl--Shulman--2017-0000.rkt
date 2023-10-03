#lang morg

(require "lib/article/bibliography.rkt"
         morg/math
         (prefix-in tex: morg/math/tex))

@bib[
  #:id (current-id)
  @article[
    #:author @list[@%{Emily Riehl} @%{Michael Shulman}]
    #:title @%{A type theory for synthetic @(math @|tex:infty|)-categories}
    #:journal-title @%{Higher Structures}
    #:date (date 2017)
    #:volume @%{1}
    #:number @%{1}
    #:pages @%{147--224}
    #:url "https://higher-structures.math.cas.cz/api/files/issues/Vol1Iss1/RiehlShulman"
  ]
]
