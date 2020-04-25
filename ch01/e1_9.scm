
; this was a cruel joke... it's an infinite loop
; nope nvm, I was wrong:
; http://community.schemewiki.org/?sicp-ex-1.9


; love this:
; The easiest way to spot that the first process is recursive 
; (without writing out the substitution) is to note that 
; the "+" procedure calls itself at the end while nested 
; in another expression; the second calls itself, but as 
; the top expression. 


; quick implementations of these helper funcs
(define (inc a) (+ a 1))
(define (dec a) (- a 1))


; use substitution model to break each of
; these functions down
(+ 4 5)

(define (+ a b)
	(if (= a 0) b (inc (+ (dec a) b)))
)

(+ 4 5)
; gives:
; (if (= 4 0) 5 (inc (+ (dec 4) 5)))
; (if (= 4 0) 5 (inc (+ 3 5)))
; (if (= 4 0) 5 (inc 8))
; (if (= 4 0) 5 9)
; (if (#f) 5 9)
; 9


;(define (+ a b)
;	(if (= a 0) b (+ (dec a) (inc b)))
;)

;(+ 4 5)



