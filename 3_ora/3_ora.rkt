#lang racket

(require racket/trace)

(define (faktorialis n)
  (if (= n 1)
      1
      (* n (faktorialis (- n 1)))))


(trace faktorialis)
(faktorialis 5)

(define (farok-factorial n eredmeny)
  (if (zero? n) eredmeny
      (farok-factorial (- n 1) (* n eredmeny))))

"-----------------------------------------------"

#;(trace farok-factorial)
(farok-factorial 5 1)

#;(time (farok-factorial 100000 1))

(define (faktor n)
  (farok-factorial n 1))

(define (rejt-fact n)
  (define (f n ered)
    (if (zero? n) ered
      (f (- n 1) (* n ered))))
  (f n 1))


(faktor 2)

(rejt-fact 5)

(define (fibo n)
  (if (< n 3)
      1
      (+ (fibo(- n 1)) (fibo(- n 2)))))

(fibo 10)
(fibo 20)
(fibo 30)

(define (tf n fi fip1) ;Tail Fibonnachi
  (if (< n 3)
      fip1 ;???????
      (tf (- n 1) fip1 (+ fi fip1))))

(tf 30 1 1)