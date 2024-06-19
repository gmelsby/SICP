#lang sicp

(#%require rackunit "../exercises/1-8.rkt")

(check-equal? (if (< (abs (- 2 (cbrt 8))) .0001) #t #f) #t "cube root of 8")
(check-equal? (if (< (abs (- 7 (cbrt 343))) .0001) #t #f) #t "cube root of 343")
(check-equal? (if (< (abs (- 0.01 (cbrt 0.000001))) .0001) #t #f) #t "cube root of 0.000001")
(check-equal? (if (< (abs (- 0 (cbrt 0))) .0001) #t #f) #t "cube root of 0")
(check-equal? (if (< (abs (- (- 4) (cbrt (- 64)))) .0001) #t #f) #t "cube root of -64")