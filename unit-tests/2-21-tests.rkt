#lang sicp

(#%require rackunit "../exercises/2-21.rkt")


(check-equal? (square-list '()) '() "empty list")
(check-equal? (square-list-map '()) '() "empty list using map")
(check-equal? (square-list (list 5 10 4)) (list 25 100 16) "simple squares")
(check-equal? (square-list-map (list 5 10 4)) (list 25 100 16) "simple squares using map")