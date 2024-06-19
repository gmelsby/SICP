#lang sicp

(#%require rackunit "../exercises/1-3.rkt")

(check-equal? (sum-of-squares-of-two-largest 4 5 6) 61 "y and z greatest")
(check-equal? (sum-of-squares-of-two-largest 6 5 4) 61 "x and y greatest")
(check-equal? (sum-of-squares-of-two-largest 6 4 5) 61 "x and z greatest")
(check-equal? (sum-of-squares-of-two-largest 6 4 4) 52 "duplicated number")
(check-equal? (sum-of-squares-of-two-largest 4 4 4) 32 "all same numbers")