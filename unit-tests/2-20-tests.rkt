#lang sicp

(#%require rackunit "../exercises/2-20.rkt")


(check-equal? (same-parity 5 5 5 3 6 5 1 4 8 27 56) (list 5 5 5 3 5 1 27) "odd numbers")
(check-equal? (same-parity 12 5 5 3 6 5 1 4 8 27 56) (list 12 6 4 8 56) "even numbers")
(check-equal? (same-parity) '() "empty list")
(check-equal? (same-parity 50) (list 50) "one value")