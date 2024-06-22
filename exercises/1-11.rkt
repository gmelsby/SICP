#lang sicp 

(define (recursive-process n)
  (if (< n 3) 
    n
    (+ 
      (recursive-process (- n 1))
      (* 2 (recursive-process (- n 2)))
      (* 3 (recursive-process (- n 3)))
    )
  )
)

(#%provide recursive-process)