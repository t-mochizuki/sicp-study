;; MIT/GNU Scheme microcode 15.3
;; M-x run-scheme
(define (divides? a b)
  (= (remainder a b) 0))

(define (find-divisor n test-divisor)
  (cond ((> (square test-divisor) n) n)
        ((divides? n test-divisor) test-divisor)
        (else (find-divisor n (+ test-divisor 1)))))

(define (smallest-divisor n)
  (find-divisor n 2))

(map (lambda (x) (smallest-divisor x)) '(199 1999 19999))
