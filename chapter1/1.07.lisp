; For small numbers good-enough? has a limit on the next
; guess limited to 0.001 this makes impossible to make great 
; approximations for low numbers. On the larger side the 
; interpreter sometimes takes forever or even it can't finish
; the operation as it goes beyond the machine's floating
; point number precission. 

; original version
(define (square x) (* x x))

(define (good-enough? guess x)
  (< (abs (- ((square guess) x)) 0.001))

(define (sqrt-iter guess x)
  (if (good-enough? guess x)
      guess
      (sqrt-iter (improve guess x) x)))

(define (improve guess x)
  (average guess (/ x guess)))

(define (average x y)
  (/ (+ x y) 2))

(define (sqrt x)
  (sqrt-iter 1.0 x))

; improved version from codology.net
(define (square x) (* x x))

(define (good-enough? previous-guess guess)
  (< (abs (/ (- guess previous-guess guess)) 0.00000000001)))

(define (sqrt-iter guess x)
  (if (good-enough? guess (improve guess x))
      guess
      (sqrt-iter (improve guess x) x)))

(define (improve guess x)
  (average guess (/ x guess)))

(define (average x y)
  (/ (+ x y) 2))

(define (sqrt x)
  (sqrt-iter 1.0 x))
