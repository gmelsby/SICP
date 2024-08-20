#lang sicp

(#%require rackunit "../exercises/2-59.rkt")


(check-equal? (union-set '() '()) '() "empty sets union")
(check-equal? (set-equals? (union-set '(1 2) '(2 3)) '(1 2 3)) #t "overlapping element")
(check-equal? (set-equals? (union-set '(1 2 4) '(2 3)) '(1 2 3)) #f "simple not equal")
(check-equal? (set-equals? (union-set '(1 2) '(2 3)) '(1 2 3 4)) #f "simple not equal 2")
(check-equal? (set-equals? (union-set '(a b) '(c d a)) '(a b c d)) #t "symbols")
(check-equal? (set-equals? (union-set '(a b) '()) '(a b)) #t "set2 empty")
(check-equal? (set-equals? (union-set '() '(a b)) '(a b)) #t "set1 empty")
