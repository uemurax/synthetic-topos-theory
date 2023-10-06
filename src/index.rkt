#lang morg

(define me @%{Taichi Uemura})

(define abstract
  @%{
    @emph{Synthetic topos theory} is the study of toposes
    by means of the synthetic method.
  })

@document[
  #:id (current-id)
  #:author @list[
    me
  ]
  #:title @%{Synthetic topos theory}
  #:contents @%[
    @paragraph{
      © 2023 @|me|
    }
    @paragraph{
      This work is licensed under a
      @href["https://creativecommons.org/licenses/by/4.0/"]{Creative Commons Attribution 4.0 International License}.
    }
    @paragraph{
      Abstract:
      @|abstract|
    }
  ]
  #:description abstract
  (include-part "004S.rkt")
  (include-part "0000.rkt")
  (include-part "001T.rkt")
  (include-part "0039.rkt")
  (include-part "003V.rkt")
  (include-part "004M.rkt")
  (include-part "0042.rkt")
  #:back @list[
    (include-part "term-index.rkt")
    (include-part "notation-index.rkt")
    (include-part "bibliography.rkt")
    (include-part "trash.rkt")
  ]
]
