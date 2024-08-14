#lang sicp

(define (fringe items) 
  (cond 
    ((null? items) '())
    ((not (pair? (car items))) 
      (cons (car items) (fringe (cdr items)))
    )
    (else (append (fringe (car items)) (fringe (cdr items))))
  )
)

(#%provide fringe)