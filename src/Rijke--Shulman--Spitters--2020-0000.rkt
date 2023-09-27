#lang morg

(require "lib/article/bibliography.rkt")

@bib[
  #:id (current-id)
  @article[
    #:author @list[
      @%{Egbert Rijke}
      @%{Michael Shulman}
      @%{Bas Spitters}
    ]
    #:title @%{Modalities in homotopy type theory}
    #:journal-title @%{Logical Methods in Computer Science}
    #:date (date 2020)
    #:volume @%{16}
    #:number @%{1}
    #:pages @%{Paper No. 2, 79}
    #:doi "10.23638/LMCS-16(1:2)2020"
  ]
]
