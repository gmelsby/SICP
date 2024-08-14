#lang sicp

(define (square x) (* x x))

(define (square-tree tree) 
  (tree-map square tree))

(define (tree-map proc tree) 
  (define (tree-proc-map tree)
    (cond 
      ((null? tree) '())
      ((pair? tree)
        (map tree-proc-map tree))
      (else (proc tree))
    ) 
  )
  (tree-proc-map tree)
)

(#%provide square-tree)