#lang sicp

(define (improve guess x) (/ (+ (/ x (* guess guess)) (* 2 guess)) 3))

(define (is-good-enough guess next-guess) (<( / (abs (- guess next-guess)) guess) 0.0001))

(define (cbrt-iter guess x)
  (define next-guess (improve guess x))
  (if (is-good-enough guess next-guess) guess (cbrt-iter next-guess x))
)

(define (cbrt x) 
  (cond 
    ((> x 0) (cbrt-iter 1 x))
    ((= x 0) 0)
    ; able to do negatives because it's a cube root
    ((< x 0) (- (cbrt-iter 1 (- x))))
  )
)

(#%provide cbrt)