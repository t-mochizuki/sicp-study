;; MIT/GNU Scheme microcode 15.3
;; M-x run-scheme
(define (pascal n k)
  (cond ((= k 0) 1)
        ((= k n) 1)
        (else (+ (pascal (- n 1)
                         (- k 1))
                 (pascal (- n 1)
                         k)))))
