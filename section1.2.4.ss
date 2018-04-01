;; MIT/GNU Scheme microcode 15.3
;; M-x run-scheme
(define (expr b n)
  (if (= n 0)
      0
      (* b (expr b (- n 1)))))

(define (expr2 b n)
  (define (expr-iter b counter product)
    (if (= counter 0)
        product
        (expr-iter b
                   (- counter 1)
                   (* b product))))
  (expr-iter b n 1))

;; 逐次平方
(define (fast-expr b n)
  (cond ((= n 0) 1)
        ((even? n) (square (fast-expr b (/ n 2))))
        (else (* b (fast-expr b (- n 1))))))
