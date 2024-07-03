#lang sicp

(#%require rackunit "../exercises/1-40.rkt")

(check-equal? (if (< (abs (+ 1.60382 (newtons-method (cubic 2 5 7) 1))) .0001) #t #f) #t "cubic 2 5 1")
(check-equal? (if (< (abs (- 0 (newtons-method (cubic 0 0 0) 1))) .0001) #t #f) #t "cubic 0 0 0")
(check-equal? (if (< (abs (- 4 (newtons-method (cubic 0 0 -64) 1))) .0001) #t #f) #t "cubic 0 0 -64")