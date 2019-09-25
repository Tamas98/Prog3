#lang racket

(+ 3 4)

(- 2 1)

(* 2 3)

(/ 6 2)

(/ 10 3)

(remainder 6 4)

(quotient 6 4)

(= 1 2)

(= 2 2)

(<= 2 3)

(>= 1 2)

(equal? "Hello" "Hello")

(number? 5)

(string? "2")

(string-length "Hello There")

(string-append "Hello" "There" "!")

(substring "Hello There" 0 5)

(sqrt -1)

(sqrt 16)

(if "apple" 1 2)

(if 0 "igaz" "hamis")

(if (< 3 2) "igaz" "hamis")

(define (smaller? a b)
  (if (< a b) #t #f))

(smaller? 2 4)

(smaller? 4 2)

(define (first-five str)
  (if (string? str)
      (if (< (string-length str) 5)
          str
          (substring str 0 5))
      "Adj stringet hülye"))
  
(first-five "Hello There")

(first-five 1)

(first-five "Hy")

(and #t #t)

(and #f #t #t #t)

"Logika(üres esetben)"
"És" (and)
"Vagy" (or)

"----------------------"
(and #t "alma" "körte")
(and #t 2)

(and #f 2)

"--------OR------------"
(or #t "alma")
(or #f "kecske")

"---------------Boosted first five-----------------"
(define (boost-f-f str)
  (if (and (string? str) (>= (string-length str) 5))
      (substring str 0 5)
      #f))


(boost-f-f "Hello There")
(boost-f-f "Hy")
(boost-f-f 2)
"----------------------------------------------"
(not "apple")
(not 2)

(not (not (or #f "kecske")))

"----------------------------"

((lambda (x) x) "Hello There")

((lambda (num) (if (number? num) (* 2 num) "Hülye vagy")) 2)


(define dbl (lambda (num) (if (number? num) (* 2 num) "Hülye vagy")))

(dbl 9)

(define my-avg (lambda (a b) (if (and (number? a) (number? b)) (/ (+ a b) 2) "Számot adj hülye")))

(my-avg 10 2)

(define (power base to)
  (if (not (= 1 to)) (* base (power base (- to 1))) base)
)

(power 2 6)

(define (fact num)
  (if (not (= 1 num)) (* num (fact (- num 1))) num))

(fact 4)

(define (getFibo n1 n2 to) 
  (if (< 0 to) (getFibo n2 (+ n1 n2) (- to 1)) n2)) 

(getFibo 2 3 1)