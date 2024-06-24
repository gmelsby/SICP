#lang sicp

(#%require rackunit "../exercises/1-31.rkt")

; iterative product check
(check-equal? (product-cubes 1 1) 1 "product of first cube is 1")
(check-equal? (product-cubes 1 5) 1728000 "product of first 5 cubes is 1728000")
(check-equal? (product-cubes 4 5) 8000 "sum of first 4 and 5 cubed is 8000")

; recursive product check
(check-equal? (product-recursive-cubes 1 1) 1 "product of first cube is 1")
(check-equal? (product-recursive-cubes 1 5) 1728000 "product of first 5 cubes is 1728000")
(check-equal? (product-recursive-cubes 4 5) 8000 "sum of first 4 and 5 cubed is 8000")


; factorial defined with product check
(check-equal? (factorial 5) 120 "5! is 120")
(check-equal? (factorial 10) 3628800 "10! is 3628800")
(check-equal? (factorial 1) 1 "1! is 1")
(check-equal? (factorial 0) 1 "0! is 1")

(check-equal? 
  (if (and (> 3.15 (pi-approx 1000)) (< 3.13 (pi-approx 1000))) #t #f) #t 
"pi approx starts with 3.14")