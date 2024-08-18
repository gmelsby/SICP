#lang sicp

(#%require rackunit "../exercises/2-33.rkt")


(check-equal? (map-acc (lambda (x) (* x x)) (list 0 1 2 3 4)) (list 0 1 4 9 16) "square map")
(check-equal? (map-acc (lambda (x) (* x x)) '()) '() "map over empty list")
(check-equal? (append-acc (list 1 2 3) (list 4 5 6)) (list 1 2 3 4 5 6) "simple append")
(check-equal? (length-acc '()) 0 "empty list length")
(check-equal? (length-acc (list 1 2 3)) 3 "list of length 3")
