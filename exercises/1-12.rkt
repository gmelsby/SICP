#lang sicp 

; calculates the element at row, col of pascal's triangle
; top of triangle is 0, 0
(define (pascals row col) 
  (if (or (= col 0) (= row col))
    1
    (+ (pascals (- row 1) (- col 1)) (pascals (- row 1) col))
  )
)

(#%provide pascals)