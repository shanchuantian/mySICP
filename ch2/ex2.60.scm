;ex2.60 set允许重复
#lang sicp
(define (element-of-set? x set)
  (cond ((null? set) false)
        ((equal? x (car set)) true)
        (else (element-of-set? x (cdr set)))))

(define (adjoin-set x set)
  (cons x set))

(define (union-set set1 set2)
  (append set1 set2))

(define (intersection-set set1 set2)
  (cond ((null? set1) '())
        ((element-of-set? (car set1) set2)
         (cons (car set1) (intersection-set (cdr set1) set2)))
        (else (intersection-set (cdr set1) set2))))

;test
(define set1 (list 1 1 2 2 3 3))
(define set2 (list 2 2 3 4 4 5 5 6))
(display (union-set set1 set2))
(newline)
(display (intersection-set set1 set2))