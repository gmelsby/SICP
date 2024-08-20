#lang sicp

(define (make-account balance password)

  (define (withdraw amount)
    (if (>= balance amount)
        (begin (set! balance 
                     (- balance amount))
               balance)
        "Insufficient funds"))

  (define (deposit amount)
    (set! balance (+ balance amount))
    balance)

  (define consecutive-incorrect 0)
  (define (dispatch pass-attempt m)
    (if 
      (not (eq? pass-attempt password)) 
        (lambda (x) 
          (set! consecutive-incorrect (+ consecutive-incorrect 1))
          (if (> consecutive-incorrect 7)
            "Call the cops"
            "Incorrect password"
          )
        )
        (begin
          (set! consecutive-incorrect 0)
          (cond
            ((eq? m 'withdraw) withdraw)
            ((eq? m 'deposit) deposit)
            (else (error "Unknown request: 
                      MAKE-ACCOUNT" m))))
    )
  )
dispatch)

  (define acc 
  (make-account 100 'secret-password))
  ((acc 'secret-password 'withdraw) 40)
  ((acc 'some-other-password 'deposit) 50)

  ((acc 'some-other-password 'deposit) 50)
  ((acc 'some-other-password 'deposit) 50)
  ((acc 'some-other-password 'deposit) 50)
  ((acc 'some-other-password 'deposit) 50)
  ((acc 'some-other-password 'deposit) 50)
  ((acc 'some-other-password 'deposit) 50)
  ((acc 'some-other-password 'deposit) 50)
  ((acc 'some-other-password 'deposit) 50)
  ((acc 'some-other-password 'deposit) 50)
  ((acc 'some-other-password 'deposit) 50)
  ((acc 'some-other-password 'deposit) 50)
  ((acc 'some-other-password 'deposit) 50)
  ((acc 'secret-password 'withdraw) 40)
  ((acc 'some-other-password 'deposit) 50)
  ((acc 'some-other-password 'deposit) 50)
  ((acc 'some-other-password 'deposit) 50)