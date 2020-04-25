
; newton's method for cube roots.
; if y is an approximation to the cube root
; of x, then a better approximation is given by:
; (x/y^2 + 2y) / 3


(define (croot-imp x y)
	(/ (+ (/ x (expt y 2)) (* 2 y)) 3 )
)


; quick inline unit test (haven't learned testing 
; or code splitting yet)
(croot-imp 9 2.0)

(define (good-enough? x1 x2)
	(< (abs (- x1 x2)) 0.0001)
)


; quick inline tests
(good-enough? 1.0 2.0)
(good-enough? 1.0 1.0001)


(define (croot-iter x y)
	(display y)
	(define next-y (croot-imp x y))
	(if (good-enough? y next-y)
		next-y
		(croot-iter x next-y)
	)
)


(define (croot x)
	(croot-iter x 1.0)
)

; testing the program
(croot 27)
(croot 8)






