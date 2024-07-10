#lang sicp

(define (square x) (* x x))
(define (cube x) (* x x x))

(define (compose f g) (
  lambda (x) (f (g x))
))

((compose square cube) 2)
((compose cube cube) 2)
((compose inc square) 2)
((compose square inc) 2)
