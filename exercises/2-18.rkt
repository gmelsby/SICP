#lang sicp

(define (reverse-helper items result)
  (if (null? items)
    result
    (reverse-helper (cdr items) (cons (car items) result))
  )
)

(define (reverse items) 
  (reverse-helper items nil) 
)

(#%provide reverse)