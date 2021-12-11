(define (sqr x)
  (* x x))
(define (sum-of-sqr x y)
  (+ (sqr x) (sqr y)))
(define (sum-of-two-biggest a b c)
  (cond ((and (> a b) (> a c)) (sum-of-sqr a (if (> b c) b c)))
	((> b c)               (sum-of-sqr b (if (> a c) a c)))
	(else                  (sum-of-sqr c (if (> a b) a b)))))

(define test-one (sum-of-two-biggest 1 2 3))
(define test-two (sum-of-two-biggest 8 2 4))
(define test-three (sum-of-two-biggest 9 3 6))
(define test-four (sum-of-two-biggest 1 3 1))
(define test-five (sum-of-two-biggest 1 4 3))

(display test-one) (newline)
(display test-two) (newline)
(display test-three) (newline)
(display test-four) (newline)
(display test-five) (newline)

