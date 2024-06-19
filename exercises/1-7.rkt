#lang sicp

(define (square x) (* x x))

(define (average x y) (/ (+ x y) 2))

(define (improve guess x) (average guess (/ x guess)))

(define (is-good-enough guess next-guess) (<( / (abs (- guess next-guess)) guess) 0.01))

(define (sqrt-iter guess x)
  (define next-guess (improve guess x))
  (if (is-good-enough guess next-guess) guess (sqrt-iter next-guess x))
)

(define (sqrt x) 
  (cond 
    ((> x 0) (sqrt-iter 1 x))
    ((= x 0) 0)
    ((< x 0) #f)
  )
)

