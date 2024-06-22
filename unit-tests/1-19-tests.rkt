#lang sicp

(#%require rackunit "../exercises/1-19.rkt")

(check-equal? (fib 0) 0 "0th fib number is 0")
(check-equal? (fib 1) 1 "1st fib number is 1")
(check-equal? (fib 2) 1 "2nd fib number is 1")
(check-equal? (fib 5) 5 "5th fib number is 5")
(check-equal? (fib 8) 21 "8th fib number is 21")
