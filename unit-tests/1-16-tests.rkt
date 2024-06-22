#lang sicp

(#%require rackunit "../exercises/1-16.rkt")

(check-equal? (iterative-fast-exp 31 0) 1 "31 to the 0th")
(check-equal? (iterative-fast-exp 2 10) 1024 "2 to the 10th")
(check-equal? (iterative-fast-exp 3 3) 27 "3 cubed")
(check-equal? (iterative-fast-exp 5 5) 3125 "5 to the 5th")
