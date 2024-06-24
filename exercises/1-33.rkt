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

(define (relatively-prime? a b)
  (if (or (= a 1) (= b 1)) #f
    (not 
      (< 0 
        (filtered-accumulate + (lambda (x) (and (divides? x a) (divides? x b))) 0 identity 2 inc b)
      )
    )
  )
)

(define (sum-of-squares-of-primes a b)
  (filtered-accumulate + prime? 0 square a inc b)
)

(define (product-relatively-prime-less-than n)
  (filtered-accumulate * (lambda (x) (relatively-prime? x n)) 1 identity 1 inc n)
)

(#%provide sum-of-squares-of-primes relatively-prime? product-relatively-prime-less-than)
