#lang sicp

(#%require rackunit "../exercises/2-18.rkt")

(check-equal? (reverse (list 23 72 149 34)) (list 34 149 72 23) "reverse of (23 72 149 34) is (34 149 72 23")
(check-equal? (reverse (list 5)) (list 5) "reverse of (5) is (5)")
(check-equal? (reverse nil) nil "reverse of () is ()")