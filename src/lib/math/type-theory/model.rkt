#lang at-exp typed/racket

(require morg/math
         (prefix-in tex: morg/math/tex)
         "../base/const.rkt"
         (prefix-in l: "../base/level.rkt")
         "function.rkt"
         (prefix-in t: "type.rkt"))

(provide Context
         Derivation
         Type
         Element)

(define (Context [T : MathTeX+Like]
                 [i : MathTeX+Like])
  ((@const{Ctx} . _ . T) . $ . i))

(define /-
  (binary #:level l:relation tex:vdash))

(define (Derivation [T : MathTeX+Like]
                    [C : MathTeX+Like]
                    [J : MathTeX+Like])
  ((@const{D} . _ . T) . $ . (C . /- . J)))

(define (Type [T : MathTeX+Like]
              [C : MathTeX+Like]
              [i : MathTeX+Like])
  (Derivation T C (t:Type i)))

(define (Element [T : MathTeX+Like]
                 [C : MathTeX+Like]
                 [A : MathTeX+Like])
  (Derivation T C A))
