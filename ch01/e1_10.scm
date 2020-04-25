

; Ackermann's function:

(define (A x y)
	;(display x)
	;(display y)
	(cond 
		((= y 0) 0)
		((= x 0) (* 2 y))
		((= y 1) 2)
		(else (A (- x 1) (A x (- y 1))))
	)	
)


; (define (f n) (A 0 n))
; (f n) computes 2n

; (define (g n) (A 1 n))
; (g n) computes 2^n
; note, each digit is the max value that can
; be represented by n number of bits

(define (h n) (A 2 n))
; After much effort, I had to look this one up
; (h n) computes 2^(h(n-1))   
; (so it's definition is recursive)

(h 0)
(h 1)
(h 2)


