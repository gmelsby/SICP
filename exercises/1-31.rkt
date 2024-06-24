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

(define (factorial n) 
  (product identity 1 inc n)
)

(define (pi-approx-nk k)
  (if (= 0 (remainder k 2))
    (/ (+ 2 k) (+ 1 k))
    (/ (+ 1 k) (+ 2 k))
  )
)

(define (pi-approx steps) 
  (* 4 (product pi-approx-nk 1 inc steps))
)

(define (cube n) (* n n n))
(define (product-cubes a b)
(product cube a inc b))

(#%provide product-cubes factorial pi-approx)