#lang sicp

(define (iterative-fast-exp base exponent) 
  (exp-iter base exponent 1)
)

(define (is-even num) (= 0 (remainder num 2)))

(define (square num) (* num num))

(define (exp-iter b n a) 
  (cond 
    ((= n 0) a)
    ((is-even n) (exp-iter (square b) (/ n 2) a))
    (else (exp-iter b (- n 1) (* b a)))
  )
)

(#%provide iterative-fast-exp)