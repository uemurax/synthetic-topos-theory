#lang typed/racket

(require morg/math
         (prefix-in tex: morg/math/tex)
         (prefix-in l: "base/level.rkt"))

(provide right-cone)

(define right-cone
  (sup-op #:level l:unary tex:triangleright))
