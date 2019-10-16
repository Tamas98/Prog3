#lang racket

(cons 1 2)
(pair? (cons 1 2))
(pair? 2)
(pair? (cons "ads" "asd"))
(pair? '(1 . 2))
(pair? '(1 2))

(displayln "------------------")

(list 1 2)
'()
null
(cons 1 (cons 2 '()))
(list? '(1 2))
(list? '(1 . 2))
(list? 1)

(displayln "------------------")

(null? null)
(null? 1)
(null? '())
(null? '(1))

(displayln "------------------")

(list 1 (list 2 3 4) (list 5) 6)

(car (list 1 (list 2 3 4) (list 5) 6))
(cdr (list 1 (list 2 3 4) (list 5) 6))

(car '(1 2))
(car (cons 1 2))

(cdr '(1 2))
(cdr '(1))

(displayln "------------------")

(list* 1 2)
(list* 1 2 (list 3 4))

(displayln "------------------")

(values 10)

(build-list 10 values)
(build-list 5 (lambda (x) (* x x)))

(displayln "------------------")

(length '())

(define (my-length lst)
  (+ 0 (if (= (length lst) 0) 1 (my-length (cdr lst)))))

(my-length (build-list 5 (lambda (x) (* x x))))

(displayln "------------------")

(list-ref (list 'a 'b  'c) 0)
(list-ref (list 'a 'b  'c) 1)
(list-ref (list 'a 'b  'c) 2)
#! (list-ref (list 'a 'b  'c) 3)

(list-ref (cons 1 2) 0)
#! (list-ref (cons 1 2) 1)

(list-tail (list 1 2 3 4 5 ) 2)
(list-tail (cons 1 2) 1)

(displayln "------------------")

(append (build-list 10 values) (build-list 5 (lambda (x) (* x x))) 2)
(reverse (build-list 10 values))

(define (my-reverse lst)
  (letrec (newLst '())
    (if (zero? (length lst)) newLst (append newLst (my-reverse (cdr lst))))))

(my-reverse (build-list 10 values))