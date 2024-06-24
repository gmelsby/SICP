#lang sicp

(#%require rackunit "../exercises/1-30.rkt")

(check-equal? (sum-cubes 0 1) 1 "sum of first cube is 1")
(check-equal? (sum-cubes 0 5) 225 "sum of first 5 cubes is 225")
(check-equal? (sum-cubes 4 5) 189 "sum of first 4 and 5 cubed is 189")
