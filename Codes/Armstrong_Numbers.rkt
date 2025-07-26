#lang racket

(define (armstrong-number? number)
  (let ([length (digit-number number)])
    (= number (calculate-armstrong number length))
  )
 )

(define (digit-number number)
  (if (zero? number) 0
      (+ 1 (digit-number (quotient number 10)))
  ))

(define (calculate-armstrong number length)
  (if (zero? number) 0
      (let ([digit (modulo number 10)])
        (+ (expt digit length) (calculate-armstrong (quotient number 10) length))))
  )