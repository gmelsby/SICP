#lang sicp

(define (square x) (* x x))

(define (average x y) (/ (+ x y) 2))

(define (improve guess x) (average guess (/ x guess)))

(define (is-good-enough guess x) (< (abs (- (square guess) x)) 0.001))

(define (sqrt-iter guess x)
  (if (is-good-enough guess x) guess (sqrt-iter (improve guess x) x))
)

(define (sqrt x) 
  (cond 
    ((> x 0) (sqrt-iter 1 x))
    ((= x 0) 0)
    ((< x 0) #f)
  )
)

(#%provide sqrt)