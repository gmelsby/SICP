#lang sicp

(define (square x) (* x x))

(define (square-tree tree) 
  (cond 
    ((null? tree) '())
    ((not (pair? (car tree))) 
      (cons (square (car tree)) (square-tree (cdr tree)))
    )
    (else (cons (square-tree (car tree)) (square-tree (cdr tree))))
  )
)

(define (square-tree-map ele) 
(cond 
    ((null? ele) '())
    ((pair? ele)
      (map square-tree-map ele))
    (else (square ele))
  )
)

(#%provide square-tree square-tree-map)