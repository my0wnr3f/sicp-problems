;; If b > 0, then a - (-b)
;; Else,          a + b
(define (a-plus-abs-b a b)
  ((if (> b 0) + -) a b))

(define test-one (a-plus-abs-b 1 -3))
(define test-two (a-plus-abs-b 1 4))
(define test-three (a-plus-abs-b -23 -11))

(display test-one) (newline)
(display test-two) (newline)
(display test-three) (newline)

