#lang racket
(require racket/string)

(provide acronym)

(define (acronym string)
  (define words (regexp-split #rx"[ _-]+" string))
  (if (equal? string "")
      ""
      (string-append (string-upcase(substring (car words) 0 1)) (acronym (string-join (cdr words) " "))))
     
  )