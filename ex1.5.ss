;; MIT/GNU Scheme microcode 15.3
;; M-x run-scheme
;; (setq indent-tabs-mode nil)
(define (p) (p))

(define (test x y)
  (if (= x 0)
      0
      y))

;; (test 0 (p))
