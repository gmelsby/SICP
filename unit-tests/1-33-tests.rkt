#lang sicp

(#%require rackunit "../exercises/1-33.rkt")

(check-equal? (sum-of-squares-of-primes 4 5) 25 "5 squared is 25")
(check-equal? (sum-of-squares-of-primes 4 8) 74 "sum of 5, 7 squared is 74")

(check-equal? (relatively-prime? 2 37) #t "2 and 37 are relatively prime")
(check-equal? (relatively-prime? 37 2) #t "37 and 2 are relatively prime")
(check-equal? (relatively-prime? 4 10) #f "4 and 10 are not relatively prime")


