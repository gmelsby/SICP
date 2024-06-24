#lang sicp

(define (product term a next b)
  (define (iter a result)
    (if (> a b)
        result
        (iter (next a) (* result (term a)))
    )
  )
  (iter a 1)
)

(define (cube n) (* n n n))
(define (product-cubes a b)
(product cube a inc b))

(#%provide product-cubes)