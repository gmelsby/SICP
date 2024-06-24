#lang sicp

(define (accumulate combiner null-value term a next b)
  (define (iter a result)
    (if (> a b)
        result
        (iter (next a) (combiner result (term a)))
    )
  )
  (iter a null-value)
)

(define (sum term a next b) (accumulate + 0 term a next b))

(define (product term a next b) (accumulate * 1 term a next b))

(define (cube n) (* n n n))
(define (product-cubes a b)
  (product cube a inc b)
)

(define (sum-cubes a b)
  (sum cube a inc b)
)

(#%provide product-cubes product-cubes sum-cubes)
