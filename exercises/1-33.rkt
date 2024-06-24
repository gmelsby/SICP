#lang sicp

(define (filtered-accumulate combiner filter null-value term a next b)
  (define (iter a result)
    (if (> a b)
        result
        (if (filter a)
          (iter (next a) (combiner result (term a)))
          (iter (next a) result)
        )
    )
  )
  (iter a null-value)
)

(define (square n) (* n n))

(define (smallest-divisor n) (find-divisor n 2))

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

(define (sum-of-squares-of-primes a b)
  (filtered-accumulate + prime? 0 square a inc b)
)


(#%provide sum-of-squares-of-primes)
