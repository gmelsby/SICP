#lang sicp

(define (simpsons-inner-iter k n f a h sum) 
  (if (> k n) sum
    (let 
      (
        (yk  (f (+ a (* k h)))) 
        (coeff (cond 
          ((or (= k 0) (= k n)) 1)
          ((= 0 (remainder k 2)) 2)
          (else 4)
        ))
      )
      (simpsons-inner-iter (+ k 1) n f a h (+ sum (* yk coeff)))
    )
  )
)

(define (simpsons-approx f a b n) 
  (let ((h (/ (- b a) n)))
    (* (/ h 3) (simpsons-inner-iter 0 n f a h 0))
  )
)

(define (cube x) (* x x x))
(define (square x) (* x x))

(simpsons-approx cube 0 1 100)
(simpsons-approx cube 0 1 1000)
(simpsons-approx square 0 1 100)
(simpsons-approx square 0 1 1000)