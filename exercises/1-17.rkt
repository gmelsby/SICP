#lang sicp

(define (double num) (* 2 num))
(define (halve num) (/ num 2))
(define (is-even num) (= 0 (remainder num 2)))

(define (times a b)
  (if (= b 0)
      0
      (if (is-even b)
        (times (double a) (halve b))
        (+ a (times a (- b 1)))
      )
  )
)

(#%provide times)
