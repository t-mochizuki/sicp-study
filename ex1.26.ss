;; MIT/GNU Scheme microcode 15.3
;; M-x run-scheme
(define (expmod base exp m)
  (cond ((= exp 0) 1)
        ((even? exp)
         (remainder (* (expmod base (/ exp 2) m)
                       (expmod base (/ exp 2) m))
                    m))
        (else
         (remainder (* base
                       (expmod base (- exp 1) m))
                    m))))

(map (lambda (x) (expmod 2 x 7)) (iota 30 34))
