#lang sicp

(define (make-monitored fn)
  (define count 0)
  (lambda (input) 
    (if (eq? input 'how-many-calls?)
      count
      (begin
        (set! count (+ count 1))
        (fn input)
      )
    )
  ) 
)

(define s (make-monitored sqrt))
(s 'how-many-calls?)
(s 100)
(s 'how-many-calls?)
(s 10)
(s 'how-many-calls?)