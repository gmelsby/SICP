#lang sicp

(define (square x)
  (* x x)
)

(define (sum-of-squares x y)
  (+ (square x) (square y))
)

(define (>= x y) 
  (or (> x y) (= x y))
)

(define (sum-of-squares-of-two-largest x y z)
  (cond 
      ((and (>= y x) (>= z x)) (sum-of-squares y z))
      ((and (>= x y) (>= z y)) (sum-of-squares x z))
      ((and (>= y z) (>= x z)) (sum-of-squares x y))
  )
)

(#%provide sum-of-squares-of-two-largest)