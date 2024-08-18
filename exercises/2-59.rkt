#lang sicp

(define (r-equal? x y)
  (cond 
    ((not (or (pair? x) (pair? y)))
      (eq? x y)
    )
    ((and (pair? x) (pair? y))
      (and 
        (r-equal? (car x) (car y))
        (r-equal? (cdr x) (cdr y))
      )
    )
    (else #f)
  )
)

(#%provide r-equal?)