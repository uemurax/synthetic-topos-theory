#lang morg

(require "lib/article/bibliography.rkt")

@bib[
  #:id (current-id)
  @inproceedings[
    #:author @list[@%{Peter Dybjer}]
    #:title @%{Internal Type Theory}
    #:book-title @%{Types for Proofs and Programs (TYPES 1995)}
    #:editor @list[@%{Stefano Berardi} @%{Mario Coppo}]
    #:publisher @%{Springer Berlin Heidelberg}
    #:pages @%{120--134}
    #:date (date 1996)
    #:doi "10.1007/3-540-61780-9_66"
  ]
]
