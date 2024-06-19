#lang sicp

(#%require rackunit "../examples/1-1-7-square-roots.rkt")

(check-equal? (if (< (abs (- 2 (sqrt 4))) .0001) #t #f) #t "square root of 4")
(check-equal? (if (< (abs (- 22.360679 (sqrt 500))) .0001) #t #f) #t "square root of 500")
(check-equal? (if (< (abs (- 0 (sqrt 0))) .0001) #t #f) #t "square root of 0")
(check-equal? (sqrt -2) #f "square root of negative is invalid")