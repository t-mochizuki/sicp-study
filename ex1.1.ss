;; MIT/GNU Scheme microcode 15.3
;; M-x run-scheme
10

(+ 5 3 4)

(- 9 1)

(/ 6 3)

(+ (* 2 4) (- 4 6))

(define a 3)
a

(define b (+ a 1))
b

(+ a b (* a b))

(= a b)

(if (and (> b a) (< b (* a b)))
    b
    a)

(cond ((= a 4) 6)
      ((= b 4) (+ 6 7 a))
      (else 25))

(+ 2 (if (> b a) b a))

(* (cond ((> a b) a)
	 ((< a b) b)
	 (else -1))
   (+ a 1))
