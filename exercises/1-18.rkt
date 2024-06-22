#lang sicp

(define (double num) (* 2 num))
(define (halve num) (/ num 2))
(define (is-even num) (= 0 (remainder num 2)))

(define (iter-times a b) (iter-times-helper a b 0))

(define (iter-times-helper a b deductions)
  (if (= b 0)
      0 
      (if (= b 1)
      (- a deductions)
        (if (is-even b)
          (iter-times (double a) (halve b) deductions)
          (iter-times a (- b 1) (+ a deductions))
        )
      )
  )
)

(#%provide iter-times)
