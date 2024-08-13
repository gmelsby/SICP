#lang sicp

(define  (same-parity . ints) 
  (same-parity-helper ints '())
)

(define (odd? int) (= (modulo int 2) 1))

(define (same-parity-helper ints result) 
  (cond 
    ((null? ints) result)
    ((null? result) (same-parity-helper (cdr ints) (list (car ints))))
    ((eq? (odd? (car result)) (odd? (car ints))) (same-parity-helper (cdr ints) (cons (car ints) result)))
    (else (same-parity-helper (cdr ints) result))
  )
)

(#%provide same-parity)
