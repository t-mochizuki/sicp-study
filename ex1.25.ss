;; MIT/GNU Scheme microcode 15.3
;; M-x run-scheme
(define (fast-prime? n times)
  (define (expmod base exp m)
    (define (fast-expt base n)
      (cond ((= n 0) 1)
            ((even? n) (square (fast-expt base (/ n 2))))
            (else (* base (fast-expt base (- n 1))))))
    (remainder (fast-expt base exp) m))
  (define (fermat-test n)
    (define (try-it a)
      (= (expmod a n n) a))
    (try-it (+ 1 (random (- n 1)))))
  (cond ((= times 0) true)
        ((fermat-test n) (fast-prime? n (- times 1)))
        (else false)))

(map (lambda (x) (list x (fast-prime? x 3))) (iota 20 1000))
;; (map (lambda (x) (list x (fast-prime? x 3))) (iota 1 1000000))
