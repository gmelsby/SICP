#lang sicp

(#%require rackunit "../exercises/2-39.rkt")


(check-equal? (reverse-r '()) '() "empty list reverse-r")
(check-equal? (reverse-r (list 1 2 3 (list 1 2 3))) (list (list 1 2 3) 3 2 1) "nested reverse-r")

(check-equal? (reverse-l '()) '() "empty list reverse-l")
(check-equal? (reverse-l (list 1 2 3 (list 1 2 3))) (list (list 1 2 3) 3 2 1) "nested reverse-l")
