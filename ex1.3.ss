;; MIT/GNU Scheme microcode 15.3
;; M-x run-scheme
;; (setq indent-tabs-mode nil)
(define (f a b c)
  (define (square x) (* x x))
  (if (< a b)
      (if (< a c)
          (+ (square b) (square c))
          (+ (square b) (square a)))
      (if (< b c)
          (+ (square a) (square c))
          (+ (square a) (square b)))))

(f 1 2 3)
(f 2 3 1)
(f 2 1 3)
(f 4 3 1)
