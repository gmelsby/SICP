#lang sicp

(#%require rackunit "../exercises/2-19.rkt")

(define us-coins 
  (list 50 25 10 5 1))

(define reversed-us-coins
  (list 1 5 10 25 50))

(define uk-coins 
  (list 100 50 20 10 5 2 1 0.5))

(define reversed-uk-coins 
  (list 0.5 1 2 5 10 20 50 100))

(check-equal? (cc 100 us-coins) 292 "292 ways to make american change from 100")
(check-equal? (cc 100 reversed-us-coins) 292 "292 ways to make american change from 100 (reversed)")
(check-equal? (cc 100 uk-coins) 104561 "104561 ways to make british change from 100")
(check-equal? (cc 100 reversed-uk-coins) 104561 "104561 ways to make british change from 100 (reversed)")
(check-equal? (cc 100 (list 10)) 1 "1 way to make change with 1 divisor") 
(check-equal? (cc 100 (list 9)) 0 "0 ways to make change with 1 non-divisor") 