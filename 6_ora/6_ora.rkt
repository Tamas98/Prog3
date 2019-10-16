#lang racket

(map (lambda (number)
       (+ number 1))
     '(1 2 3 4 ))

(map (lambda (a b) ; Elemek összeadása lambda-val
     (+ a b))
     '(1 2 3 4) '(8 7 6 5))

(map + '(1 2 3 4) '(8 7 6 5) '(1 1 1 1)) ; Elemek öösszeadása egyszerűbben

(andmap positive? '(1 2 3))
(andmap positive? '(1 -2 3))
(andmap + '(1 2 3) '(8 7 6)) ;Az utoljára végrehajtott elem lesz az eredmény ha sikeres.

(ormap positive? '(1 2 3))
(ormap positive? '(1 -2 3))
(ormap + '(1 2 3) '(8 7 6)) ;Az első sikeresen végrehajtott műveletet adja vissza

(for-each (lambda (a b) (printf "Got ~a ~a\n" a b)) '(1 2 3 4 5) '(8 7 6 5 4))

(foldl + 0 '(1 2 3 4 5))
(foldl (lambda (a b result)
         (* result (- a b))) 1 '(2 3 4) '(7 8 9))

(foldl cons '() '(1 2 3 4))

(foldr cons '() '(1 2 3 4))
(foldr (lambda (v l) (cons (add1 v) l)) '() '(1 2 3 4))

(filter positive? '(1 -2 3 4 -7 11))

(remove 2 '(1 2 3 2 4 2 5 2))
(remove 9 '(1 2 3 2 4 2 5 2))

(remove 2 '(1 2 3 2 4 2 5 2) =)
(remove 'c (list 'a 'b 'c 'd 'c 'e) eq?)

(remove 2 '(1 2 3 2 4 2 5 2) >)

(remove 2 '(2 3 2 4 2 5 2) (lambda (a b) (= (modulo b a) 1)))

(remove* '(1 2) '(1 2 3 2 4 2 5 2)) 

