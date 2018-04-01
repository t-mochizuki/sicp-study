;; MIT/GNU Scheme microcode 15.3
;; M-x run-scheme
(define (f n)
  (if (< n 3)
      n
      (+ (f (- n 1))
         (* 2 (f (- n 2)))
         (* 3 (f (- n 3))))))

(define (f2 n)
  (define (f-iter a b c count)
    (if (= count 0)
        c
        (f-iter (+ a
                   (* 2 b)
                   (* 3 c))
                a
                b
                (- count 1))))
  (f-iter 2 1 0 n))
