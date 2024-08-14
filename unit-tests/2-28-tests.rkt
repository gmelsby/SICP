#lang sicp

(#%require rackunit "../exercises/2-28.rkt")


(define x 
  (list (list 1 2) (list 3 4)))
(check-equal? (fringe x) (list 1 2 3 4) "book example")
(check-equal? (fringe (list x x)) (list 1 2 3 4 1 2 3 4) "book example 2")
(check-equal? (fringe '()) '() "empty list")
(check-equal? (fringe (list 1 2 3 4)) (list 1 2 3 4) "no nesting")
(check-equal? (fringe (list (list (list 1 (list 2)) 3 4))) (list 1 2 3 4) "deep nesting")