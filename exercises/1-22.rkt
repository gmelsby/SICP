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

(define (search-for-primes start end count)
  (cond 
    ((> start end) 
      (newline)
      (display "search complete")
      (newline)
      (display "found ")
      (display count)
      (display " primes")
    )
    ((= (remainder start 2) 0) (search-for-primes (+ start 1) end count))
    (else 
      (search-for-primes (+ start 2) end (+ count (timed-prime-test start)))
    )
  )
)

(search-for-primes 100 150 0)

