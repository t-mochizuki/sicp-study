;; MIT/GNU Scheme microcode 15.3
;; M-x run-scheme
(define (gcd a b)
  (if (= b 0)
      a
      (gcd b (remainder a b))))

(gcd 206 40)
