;; MIT/GNU Scheme microcode 15.3
;; M-x run-scheme
(define (sqrt-iter guess x)
  (define (square x) (* x x))
  (define (cube x) (* x x x))
  (define (average x y)
    (/ (+ x y y) 3))
  (define (improve guess x)
    (average (/ x (square guess)) guess))
  (define (good-enough? guess x)
    (< (abs (- (cube guess) x)) 0.001))
  (if (good-enough? guess x)
      guess
      (sqrt-iter (improve guess x) x)))

(sqrt-iter 1.0 27)
(sqrt-iter 1.0 64)
(sqrt-iter 1.0 125)
