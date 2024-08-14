#lang sicp

(define (square x) (* x x))

(define (square-tree tree) 
  (tree-map square tree))

(define (tree-map proc tree) 
(cond 
    ((null? tree) '())
    ((pair? tree)
      (map square-tree-map ele))
    (else (square ele))
  )
)

(#%provide square-tree)