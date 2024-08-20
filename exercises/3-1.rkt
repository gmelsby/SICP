#lang sicp

(define (make-accumulator val)
  (lambda (x) 
    (set! val (+ val x))
    val
  ) 
)

(define A (make-accumulator 5))
(A 10)
(A 0)
(A 56)