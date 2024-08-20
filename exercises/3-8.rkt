#lang sicp

(define (f-maker)
  (define counter 0)
  (lambda (x)
    (let ((result (max (- x counter) 0)))
      (set! counter (+ counter 1))
      result
    )
  )
)

(define f (f-maker))
(+ (f 0) (f 1))

(define f2 (f-maker))
(+ (f2 1) (f2 0))