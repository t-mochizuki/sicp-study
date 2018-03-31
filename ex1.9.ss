;; MIT/GNU Scheme microcode 15.3
;; M-x run-scheme
(define (inc x)
  (+ x 1))

(define (dec x)
  (- x 1))

(define (plus a b)
  (if (= a 0)
      b
      (inc (plus (dec a) b))))

;; (plus 4 5)
;; (inc (plus (dec 4) 5))
;; (inc (plus 3 5))
;; (inc (inc (plus (dec 3) 5)))
;; (inc (inc (plus 2 5)))
;; (inc (inc (inc (plus (dec 2) 5))))
;; (inc (inc (inc (plus 1 5))))
;; (inc (inc (inc (inc (plus (dec 1) 5)))))
;; (inc (inc (inc (inc (plus 0 5)))))
;; (inc (inc (inc (inc 5))))

(define (plus2 a b)
  (if (= a 0)
      b
      (plus (dec a) (inc b))))

;; (plus2 4 5)
;; (plus2 3 6)
;; (plus2 2 7)
;; (plus2 1 8)
;; (plus2 0 9)
