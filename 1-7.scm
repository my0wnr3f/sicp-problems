(define (sqrt x)
  (sqrt-iter 1.0 x))
(define (sqrt-iter y x)
  (if (good-enough? y x)
      y
      (sqrt-iter (improve y x)
		 x)))
(define (good-enough? y x)
  (> (part-of y (improve y x)) 99.99998))
(define (part-of x y)
  (if (> x y)
      (* (/ y x) 100)
      (* (/ x y) 100)))
(define (improve y x)
  (average y (/ x y)))
(define (average x y)
  (/ (+ x y) 2))

(define test-1
  (sqrt 2))
(define test-2
  (sqrt 3))
(define test-3
  (sqrt 4))
(define 5est-4
  (sqrt 6))
(define test-5
  (sqrt 7))

(display test-1) (newline)
(display test-2) (newline)
(display test-3) (newline)
(display test-4) (newline)
(display test-5) (newline)

