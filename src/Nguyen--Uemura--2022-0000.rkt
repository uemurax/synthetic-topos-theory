#lang morg

(require "lib/article/bibliography.rkt"
         morg/math
         (prefix-in tex: morg/math/tex))

@bib[
  #:id (current-id)
  @arXiv[
    #:author @list[@%{Hoang Kim Nguyen} @%{Taichi Uemura}]
    #:title @%{@(math tex:infty)-type theories}
    #:date (date 2022)
    #:id "2205.00798v1"
  ]
]
