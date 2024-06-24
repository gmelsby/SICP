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

(define (product-recursive term a next b)
  (if (> a b)
    1
    (* (term a) (product-recursive term (next a) next b))
  )
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
  (product cube a inc b)
)

(define (product-recursive-cubes a b)
  (product-recursive cube a inc b)
)

(#%provide product-cubes product-recursive-cubes factorial pi-approx)