#lang sicp

(#%require rackunit "../exercises/2-59.rkt")


(check-equal? (r-equal? '() '()) #t "empty list r-equal?")
(check-equal? (r-equal? (list 1 2 3 (list 1 2 3)) (list 1 2 3 (list 1 2 3))) #t "nested r-equal?")
(check-equal? (r-equal? (list 1 2 3 (list 1 1 3)) (list 1 2 3 (list 1 2 3))) #f "nested not r-equal")
(check-equal? (r-equal? (list 1 2 3 1 2 3) (list 1 2 3 (list 1 2 3))) #f "nested flattened not r-equal")
(check-equal? (r-equal? '(this is a list) '(this is a list)) #t "text")
(check-equal? (r-equal? '(this is a list) '(this (is a) list)) #f "text not equal")
