#lang sicp

(#%require rackunit "../exercises/1-33.rkt")

(check-equal? (sum-of-squares-of-primes 4 5) 25 "5 squared is 25")
(check-equal? (sum-of-squares-of-primes 4 8) 74 "sum of 5, 7 squared is 74")

(check-equal? (relatively-prime? 2 37) #t "2 and 37 are relatively prime")
(check-equal? (relatively-prime? 37 2) #t "37 and 2 are relatively prime")
(check-equal? (relatively-prime? 4 10) #f "4 and 10 are not relatively prime")

(check-equal? (product-relatively-prime-less-than 10) 189 "3 * 7 * 9 = 189")
(check-equal? (product-relatively-prime-less-than 2) 1 "no relative primes to 2 less than 2")
(check-equal? (product-relatively-prime-less-than 3) 2 "2 is relatively prime to 3")

