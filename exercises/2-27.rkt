#lang sicp

(define (deep-reverse items) 
  (deep-reverse-helper items '())
)

(define (deep-reverse-helper items result)
  (cond 
    ((null? items) result)
    ((not (pair? (car items))) 
      (deep-reverse-helper (cdr items) (cons (car items) result))
    )
    (else (deep-reverse-helper (cdr items) (cons (deep-reverse-helper (car items) '()) result)))
  )
)

(#%provide deep-reverse)