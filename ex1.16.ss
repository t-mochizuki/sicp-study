;; MIT/GNU Scheme microcode 15.3
;; M-x run-scheme
(define (fast-expr b n)
  (define (fast-expr-iter b counter product)
    (cond ((= counter 0) 1)
          ((= counter 1) (* b product))
          ((even? counter) (fast-expr-iter (square b) (/ counter 2) product))
          (else (fast-expr-iter b (- counter 1) (* b product)))))
  (fast-expr-iter b n 1))
