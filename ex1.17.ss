;; MIT/GNU Scheme microcode 15.3
;; M-x run-scheme
(define (product a b)
  (if (= b 0)
      0
      (+ a (product a (- b 1)))))

(define (fast-product a b)
  (define (double x) (* x 2))
  (define (halve x) (/ x 2))
  (cond ((= b 0) 0)
        ((even? b) (fast-product (double a) (halve b)))
        (else (+ a (fast-product a (- b 1))))))
