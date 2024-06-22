#lang sicp

(#%require rackunit "../exercises/1-17.rkt")

(check-equal? (times 31 0) 0 "31 times 0")
(check-equal? (times 0 31) 0 "0 times 31")
(check-equal? (times 10 10) 100 "10 times 10")
(check-equal? (times 9 81) 729 "9 times 81")

