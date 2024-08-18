#lang sicp

(define (fold-r op initial sequence)
  (if (null? sequence)
      initial
      (op (car sequence)
          (fold-r op 
                      initial 
                      (cdr sequence)))))

(define (fold-l op initial sequence)
  (define (iter result rest)
    (if (null? rest)
        result
        (iter (op result (car rest))
              (cdr rest))))
  (iter initial sequence))

(define (reverse-l sequence)
  (fold-l
    (lambda (x y) (cons y x)) nil sequence)
)

(define (reverse-r sequence)
  (fold-r
    (lambda (x y) (append y (list x))) nil sequence)
)

(#%provide reverse-l reverse-r)