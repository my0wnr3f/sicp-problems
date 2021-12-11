(define (new-if pred then-cl else-cl)
  (cond (pred then-cl)
	(else else-cl)))

(define test-1 
  (new-if (= 2 3)
	  0
	  5))
(define test-2
  (new-if (= 1 1)
	  2
	  0))

(display test-1) (newline)
(display test-2) (newline)

;; Works... But is it true for all things?

(define (sqrt-iter y x)
  (new-if (good-enough? y x)
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
(define (sqrt x)
  (sqrt-iter 1.0 x))

;; Infinite loop 'cuz of appl. exec. order.
(define test
  (sqrt 2))

