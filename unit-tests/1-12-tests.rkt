#lang sicp

(#%require rackunit "../exercises/1-12.rkt")

(check-equal? (pascals 0 0) 1 "top of triangle")
(check-equal? (pascals 60 0) 1 "start of row 60")
(check-equal? (pascals 60 60) 1 "end of row 60")
(check-equal? (pascals 4 1) 4 "row 4, col 1")
(check-equal? (pascals 4 2) 6 "row 4, col 6")
(check-equal? (pascals 10 4) 210 "row 10, col 4")