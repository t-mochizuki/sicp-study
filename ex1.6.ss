;; MIT/GNU Scheme microcode 15.3
;; M-x run-scheme
(define (sqrt-iter guess x)
  (define (square x) (* x x))
  (define (average x y)
    (/ (+ x y) 2))
  (define (improve guess x)
    (average guess (/ x guess)))
  (define (good-enough? guess x)
    (< (abs (- (square guess) x)) 0.001))
  (define (new-if p then-clause else-clause)
    (cond (p then-clause)
          (else else-clause)))
  (new-if (good-enough? guess x)
      guess
      (sqrt-iter (improve guess x) x)))

;; (sqrt-iter 1.0 16)
