#lang morg

(require "lib/article/bibliography.rkt")

@bib[
  #:id (current-id)
  @inbook[
    #:author @list[@%{Mathieu Anel} @%{André Joyal}]
    #:title @%{Topo-logie}
    #:booktitle @%{New Spaces in Mathematics: Formal and Conceptual Reflections}
    #:editor @list[@%{Mathieu Anel} @%{Gabriel Catren}]
    #:publisher @%{Cambridge University Press}
    #:location @%{Cambridge}
    #:volume @%{1}
    #:pages @%{155--257}
    #:date (date 2021)
    #:doi "10.1017/9781108854429.007"
  ]
]
