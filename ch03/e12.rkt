#lang scheme 
(require rnrs/base-6) 
(require rnrs/mutable-pairs-6) 

(define x (list 'a 'b))
(define y (list 'c 'd))
(define z (append x y))
z

(cdr x)

(define (last-pair x)
  (if (null? (cdr x))
      x
      (last-pair (cdr x))))

(define (append! x y)
  (set-cdr! (last-pair x) y)
  x)

(define w (append! x y))
w
(cdr x)