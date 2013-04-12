#lang scheme
(define (attach-tag type-tag contents)
  (if (symbol? contents)
      (cons type-tag contents)
      contents))

(define (type-tag datum)
  (cond ((number? datum) 'scheme-number)
        ((pair? datum) (car datum))
        (else
         (error "Bad tagged datum -- TYPE-TAG" datum))))

(define (contents datum)
  (cond ((number? datum) datum)
        ((pair? datum) (car datum))
        (else
         (error "Bad tagged datum -- CONTENTS" datum))))
