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

(define (iterative-process n)
  (iter-helper n 0 0 0 0) 
)

(define (iter-helper n current fn-minus-one fn-minus-two fn-minus-three)
  (if (< current 3)

    (if (= n current)
      n
      (iter-helper n (+ current 1) current fn-minus-one fn-minus-two)
    )

    (let ((fn (+ fn-minus-one (* 2 fn-minus-two) (* 3 fn-minus-three))))
      (if (= n current)
        fn
        (iter-helper n (+ current 1) fn fn-minus-one fn-minus-two)
      )
    )
  )
)

(#%provide recursive-process iterative-process)