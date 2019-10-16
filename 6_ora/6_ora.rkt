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

(sort '(1 3 5 2 11 6 3 4 7 4 5 10) <)

(sort '("Hello" "idegen" "mond" "most" "mi" "legyen") string<?)

(sort #:key car '((8 "Miskolc") (2) (7) (10) (15) (4) (2 "Debrecen") (5) (3) (14) (17)) < )

(sort #:key car '((8 "Miskolc") (2) (7) (10) (15) (4) (2 "Debrecen") (5) (3) (14) (17)) < #:cache-keys? #t)

(member 2 '(1 3 5 2 11 6 3 4 7 4 5 10) <)

(memf (lambda (n) (> n 9)) '(1 3 5 2 11 6 3 4 7 4 5 10))

(findf (lambda (n) (> n 9)) '(1 3 5 2 8 6 3 4 7 4 5 6))

(assoc 6 '((1 "Debrecen") (3 "Miskolc") (3 "BudaPest") (4 "Szöged") (5 "Kótaly")))

(assf (lambda (n) (> n 9)) '((1 1) (2 3) (21 5) (2 2) (20 11) (6 1) (1 3)))

(car (car '((1 2) (2 3))))
(caar '((1 2) (2 3)))

(cdadar '((1 ((3 (4 5)) 2))))