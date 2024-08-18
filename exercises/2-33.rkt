#lang sicp

(define (accumulate op initial sequence)
  (if (null? sequence)
      initial
      (op (car sequence)
          (accumulate op 
                      initial 
                      (cdr sequence)))))

(define (map-acc p sequence)
  (accumulate (lambda (x y) (cons (p x) y)) 
              nil sequence))

(define (append-acc seq1 seq2)
  (accumulate cons seq2 seq1))


(define (length-acc sequence)
  (accumulate (lambda (x y) (+ 1 y)) 0 sequence))

(#%provide map-acc append-acc length-acc)