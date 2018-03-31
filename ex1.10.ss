;; MIT/GNU Scheme microcode 15.3
;; M-x run-scheme
(define (A x y)
  (cond ((= y 0) 0)
        ((= x 0) (* 2 y))
        ((= y 1) 2)
        (else (A (- x 1)
                 (A x (- y 1))))))

(define (f n) (A 0 n))

;; (* 2 n)

(define (g n) (A 1 n))

;; (h n)
;; (A 1 n)
;; (A 0 (A 1 (- n 1)))
;; (A 0 (g (- n 1)))
;; (A 0 (A 0 (g (- n 2))))
;; ...
;; (A 0 (A 0 ... (g 1))
;; (A 0 (A 0 ... (2)))
;; 2 ^ n

(define (h n) (A 2 n))

;; (h n)
;; (A 2 n)
;; (A 1 (A 2 (- n 1)))
;; (A 1 (h (- n 1)))
;; (g (h (- n 1)))
;; (g (g (h (- n 2))))
;; ...
;; (g (g ... (g 1)))
;; (g (g ... (2)))

(define (k n) (* 5 n n))
