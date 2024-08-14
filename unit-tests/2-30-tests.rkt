#lang sicp

(#%require rackunit "../exercises/2-30.rkt")


(check-equal? (square-tree
  (list 1
    (list 2 (list 3 4) 5)
    (list 6 7)))
  (list 1
    (list 4 (list 9 16) 25)
    (list 36 49))
  "book example")
(check-equal? (square-tree '()) '() "empty list")

(check-equal? (square-tree-map
  (list 1
    (list 2 (list 3 4) 5)
    (list 6 7)))
  (list 1
    (list 4 (list 9 16) 25)
    (list 36 49))
  "book example map")
(check-equal? (square-tree-map '()) '() "empty list map")