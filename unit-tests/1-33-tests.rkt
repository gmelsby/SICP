#lang sicp

(#%require rackunit "../exercises/1-33.rkt")

(check-equal? (sum-of-squares-of-primes 4 5) 25 "5 squared is 25")
(check-equal? (sum-of-squares-of-primes 4 8) 74 "sum of 5, 7 squared is 74")



