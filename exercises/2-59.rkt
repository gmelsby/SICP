#lang sicp

(define (element-of-set? x set)
  (cond ((null? set) false)
        ((equal? x (car set)) true)
        (else (element-of-set? x (cdr set)))))

(define (adjoin-set x set)
  (if (element-of-set? x set)
      set
      (cons x set)))

(define (union-set set1 set2)
  (cond ((and (null? set1) (null? set2)) 
         '())
        ((null? set2)  
          set1
        )
        (else (union-set (adjoin-set (car set2) set1) (cdr set2)))
  )
)

(define (is-subset? set1 set2) 
  (cond 
    ((null? set1) #t)
    ((not (element-of-set? (car set1) set2)) #f)
    (else (is-subset? (cdr set1) set2))
  )
)

(define (set-equals? set1 set2) 
  (and
    (is-subset? set1 set2)
    (is-subset? set2 set1)
  )
)

(#%provide union-set set-equals?)