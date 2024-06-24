#lang sicp

(#%require rackunit "../exercises/1-32.rkt")

(check-equal? (product-cubes 1 1) 1 "product of first cube is 1")
(check-equal? (product-cubes 1 5) 1728000 "product of first 5 cubes is 1728000")
(check-equal? (product-cubes 4 5) 8000 "sum of first 4 and 5 cubed is 8000")

(check-equal? (sum-cubes 0 1) 1 "sum of first cube is 1")
(check-equal? (sum-cubes 0 5) 225 "sum of first 5 cubes is 225")
(check-equal? (sum-cubes 4 5) 189 "sum of first 4 and 5 cubed is 189")

(check-equal? (product-cubes-recursive 1 1) 1 "product of first cube is 1")
(check-equal? (product-cubes-recursive 1 5) 1728000 "product of first 5 cubes is 1728000")
(check-equal? (product-cubes-recursive 4 5) 8000 "sum of first 4 and 5 cubed is 8000")

(check-equal? (sum-cubes-recursive 0 1) 1 "sum of first cube is 1")
(check-equal? (sum-cubes-recursive 0 5) 225 "sum of first 5 cubes is 225")
(check-equal? (sum-cubes-recursive 4 5) 189 "sum of first 4 and 5 cubed is 189")



