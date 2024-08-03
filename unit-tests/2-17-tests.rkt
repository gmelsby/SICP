#lang sicp

(#%require rackunit "../exercises/2-17.rkt")

(check-equal? (last-pair (list 23 72 149 34)) (list 34) "last pair of list is 34")
(check-equal? (last-pair (list 2)) (list 2) "last pair of list of length 1 is 2")