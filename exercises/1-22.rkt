#lang sicp

(define (smallest-divisor n) (find-divisor n 2))
(define (square n) (* n n))

(define (find-divisor n test-divisor)
  (cond ((> (square test-divisor) n) 
         n)
        ((divides? test-divisor n) 
         test-divisor)
        (else (find-divisor 
               n 
               (+ test-divisor 1)))))

(define (divides? a b)
  (= (remainder b a) 0))

(define (prime? n) (= n (smallest-divisor n)))

(define (timed-prime-test n)
  (newline)
  (display n)
  (start-prime-test n (runtime))
)

(define (start-prime-test n start-time)
  (if (prime? n)
      (report-prime (- (runtime) start-time))
      0
  )
)

(define (report-prime elapsed-time)
  (display " *** ")
  (display elapsed-time)
  1
)

(define (search-for-primes start count)
  (cond 
    ((= count 0) 
      (newline)
      (display "search complete")
    )
    ((= (remainder start 2) 0) (search-for-primes (+ start 1) count))
    (else 
      (search-for-primes (+ start 2) (- count (timed-prime-test start)))
    )
  )
)

(search-for-primes 1000 3)
(search-for-primes 10000 3)
(search-for-primes 100000 3)
(search-for-primes 1000000 3)

