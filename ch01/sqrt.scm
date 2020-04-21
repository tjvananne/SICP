

; Newton's method for approximating square roots


(define (avg a b)
	(/ (+ a b) 2.0)
)


(define (good-enough? x1 x2)
	(< (abs (- x1 x2) ) 0.01)
)


(define (sqrt-improve x guess)
	(avg guess (/ x guess))
)


; description of what I changed from the SICP book example:
; if you move the base case to after the guess-improvement function...
; then you can more easily use "this" and "next" guess to determine
; if your current solution is "good-enough" (base case)
(define (sqrt-iter x guess)
	(define nextguess (sqrt-improve x guess))
	(if (good-enough? guess nextguess)
		nextguess
		(sqrt-iter x nextguess)
	)
)


; wrapper function that will get us started with a guess of 1
(define (mysqrt x)
	(sqrt-iter x 1)
)


; call sqrt-iter directly if you want a manual guess
(sqrt-iter 100.0 1.0)

; call the wrapper mysqrt function if you're ok with default of "1" for a guess
(mysqrt 100.0)
















