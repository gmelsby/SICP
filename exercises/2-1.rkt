#lang sicp

(define (gcd a b)
  (if (= b 0)
      a
      (gcd b (remainder a b))))

(define (make-rat-with-signs n d)
  (let ((g (gcd n d)))
    (cons (/ n g) 
          (/ d g))))

(define (negative? n) (< n 0))
(define (same-sign? a b) 
  (or 
    (and (negative? a) (negative? b))
    (not (or (negative? a) (negative? b)))
  )
)

(define (make-positive a)
  (if (negative? a) (* -1 a) a)
)

(define (flip-sign a) (* -1 a))
(define (flip-signs rat) (
  (cons (flip-sign (car rat)) (flip-sign (cdr rat)))))

(define (make-rat n d) 
  (let ((sign-result (make-rat-with-signs n d)))
    (cond 
      ((same-sign? (car sign-result) (cdr sign-result)) 
        (cons (make-positive (car sign-result)) (make-positive (cdr sign-result))))
      ((negative? (cdr sign-result)) 
        (flip-signs sign-result))
      (else sign-result)
    )
  )
)

(make-rat 2 3)
(make-rat -2 -3)
(make-rat 2 -3)
(make-rat -2 3)
