;; MIT/GNU Scheme microcode 15.3
;; M-x run-scheme
(define (fast-product b n)
  (define (double x) (* x 2))
  (define (halve x) (/ x 2))
  (define (fast-product-iter b counter product)
    (cond ((= counter 0) product)
          ((even? counter) (fast-product-iter (double b) (halve counter) product))
          (else (fast-product-iter b (- counter 1) (+ b product)))))
  (fast-product-iter b n 0))
