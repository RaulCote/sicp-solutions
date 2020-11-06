; Use the same aproach to solve the square root with cube roots
; by using the Newton approach for better guessing
;     x/y2 + 2y
;     ---------
;         3
;

(define (cube x) (* x x x))

(define (good-enough? previous-guess guess) 
  (< (abs (/ (- guess previous-guess guess)) 0.000000001)))

(define (improve guess x)
  (/
    (+
    (/ x (* guess guess)) (* 2 guess))
    3))

(define (cube-tier guess x)
  (if (good-enough? guess (improve guess x))
    guess
    (cube-tier (improve guess x) x))

(define (cube-root x)
  (cube-tier 8.0 x))
