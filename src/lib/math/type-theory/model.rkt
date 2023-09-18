#lang at-exp typed/racket

(require morg/math
         (prefix-in tex: morg/math/tex)
         "../base/const.rkt"
         (prefix-in l: "../base/level.rkt")
         "function.rkt"
         "element.rkt"
         (prefix-in t: "type.rkt"))

(provide Context
         Derivation
         Type
         empty-context
         empty-context/visible
         is-Context
         is-Type
         is-Element
         Globalization
         Element)

(define (Context [T : MathTeX+Like]
                 [i : MathTeX+Like])
  ((@const{Ctx} . _ . T) . $ . i))

(define (is-Context [C : MathTeX+Like]
                    [T : MathTeX+Like]
                    [i : MathTeX+Like])
  (C . is-elem . (Context T i)))

(define /-
  (binary #:level l:/- tex:vdash))

(define (Derivation [T : MathTeX+Like]
                    [C : MathTeX+Like]
                    [J : MathTeX+Like])
  ((@const{D} . _ . T) . $ . (C . /- . J)))

(define (Type [T : MathTeX+Like]
              [C : MathTeX+Like]
              [i : MathTeX+Like])
  (Derivation T C (t:Type i)))

(define (is-Type [A : MathTeX+Like]
                 [T : MathTeX+Like]
                 [C : MathTeX+Like]
                 [i : MathTeX+Like])
  (A . is-elem . (Type T C i)))

(define (Element [T : MathTeX+Like]
                 [C : MathTeX+Like]
                 [A : MathTeX+Like])
  (Derivation T C A))

(define (is-Element [a : MathTeX+Like]
                    [T : MathTeX+Like]
                    [C : MathTeX+Like]
                    [A : MathTeX+Like])
  (a . is-elem . (Element T C A)))

(define empty-context
  (group))

(define empty-context/visible
  tex:epsilon)

(define (Globalization [T1 : MathTeX+Like]
                       [T2 : MathTeX+Like])
  ((@const{Glob} . _ . T1) . $ . T2))
