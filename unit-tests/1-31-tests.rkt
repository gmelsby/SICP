#lang sicp

(#%require rackunit "../exercises/1-31.rkt")

(check-equal? (product-cubes 1 1) 1 "product of first cube is 1")
(check-equal? (product-cubes 1 5) 1728000 "product of first 5 cubes is 1728000")
(check-equal? (product-cubes 4 5) 8000 "sum of first 4 and 5 cubed is 8000")
