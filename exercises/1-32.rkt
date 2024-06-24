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

(define (accumulate-recursive combiner null-value term a next b)
  (if (> a b)
    null-value
    (combiner (term a) (accumulate-recursive combiner null-value term (next a) next b))
  )
)

(define (sum term a next b) (accumulate + 0 term a next b))
(define (sum-recursive term a next b) (accumulate-recursive + 0 term a next b))

(define (product term a next b) (accumulate * 1 term a next b))
(define (product-recursive term a next b) (accumulate-recursive * 1 term a next b))

(define (cube n) (* n n n))
(define (product-cubes a b)
  (product cube a inc b)
)

(define (sum-cubes a b)
  (sum cube a inc b)
)

(define (product-cubes-recursive a b)
  (product-recursive cube a inc b)
)

(define (sum-cubes-recursive a b)
  (sum-recursive cube a inc b)
)

(#%provide product-cubes product-cubes-recursive sum-cubes sum-cubes-recursive)
