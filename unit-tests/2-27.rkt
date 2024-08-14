#lang sicp

(#%require rackunit "../exercises/2-27.rkt")



(check-equal? (deep-reverse (list (list 1 2) (list 3 4))) (list (list 4 3) (list 2 1)) "book example")
(check-equal? (deep-reverse '()) '() "empty list")
(check-equal? (deep-reverse (list 1 2 3 4)) (list 4 3 2 1) "no nesting")
(check-equal? (deep-reverse (list (list (list 1 (list 2)) 3 4))) (list (list 4 3 (list (list 2) 1))) "deep nesting")