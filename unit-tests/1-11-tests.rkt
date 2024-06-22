#lang sicp

(#%require rackunit "../exercises/1-11.rkt")

(check-equal? (recursive-process 2) 2 "recursive process: n = 2")
(check-equal? (recursive-process 3) 4 "recursive process: n = 3")
(check-equal? (recursive-process 4) 11 "recursive process: n = 4")
(check-equal? (iterative-process 2) 2 "iterative process: n = 2")
(check-equal? (iterative-process 3) 4 "iterative process: n = 3")
(check-equal? (iterative-process 4) 11 "iterative process: n = 4")
(check-equal? (iterative-process 10) (recursive-process 10) "iterative and recursive process: n = 10")